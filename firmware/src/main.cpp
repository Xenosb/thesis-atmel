#include "main.hpp"

I2CSlave slave(I2C_SDA_PIN, I2C_SCL_PIN);
DigitalOut led(LED_PIN);
DigitalIn sense_in(SENSE_IN_PIN);
DigitalOut sense_out(SENSE_OUT_PIN);
Sensors sensors();
Smartbed smartbed(NODE_ADR, SENSOR_NUMBER);

/**
==================
Main loop function
==================
*/
int main()
{

  led = 1;
  sense_out = 0;
  sense_in.mode(PullDown);

  slave.frequency(I2C_FREQ);
  slave.address(NODE_ADR);

  I2C_RESULT i2c_data;

  while (1)
  {
    i2c_data = i2c_slave_worker(slave);
    process_i2c_call(i2c_data);
  }
}

/**
====================
I2C process function
====================
*/
void process_i2c_call(I2C_RESULT i2c_data)
{
  switch (i2c_data.type)
  {
  case I2C_RESULT::None:
    return;
  case I2C_RESULT::WriteAddressed:
    process_write(i2c_data);
    break;
  case I2C_RESULT::ReadAddressed:
    process_read(i2c_data);
    break;
  case I2C_RESULT::WriteBroadcasted:
    process_broadcast(i2c_data);
    break;
  }
}

/**
===============================
Process write actions to node

registers
0xfa          - set i2c address
0xf0          - set sense_out
===============================
**/
void process_write(I2C_RESULT i2c_data)
{
  switch (i2c_data.reg)
  {
  case 0xfa: // TESTED WORKING
    smartbed.set_address(i2c_data.reg_value);
    slave.address(0x05);
    break;
  case 0xf0: // TESTED WORKING
    sense_out.write(i2c_data.reg_value);
    break;
  default:
    return;
  }
}

/**
========================================
Process read actions to node

registers
0x00 ... 0x10 - sensors
0xfa          - i2c address
0xfb          - number of active sensors
0xfc          - board revision
0xfd          - firmware version
========================================
**/
void process_read(I2C_RESULT i2c_data)
{
  switch (i2c_data.reg)
  {
  case 0 ... 16:
    slave.write(1);
    break;
  case 0xfa:
    slave.write(smartbed.get_address());
    break;
  case 0xfb:
    slave.write(smartbed.get_sensor_number());
    break;
  case 0xfc:
    slave.write(HW_VER);
    break;
  case 0xfd:
    slave.write(SW_VER);
    break;
  default: // echo
    slave.write(0xab);
    return;
  }
}

/**
===========================================================
Process broadcast actions to node

accepted messages
[0xfa, 0x??]    - sets the node address if sense_in active
===========================================================
**/
void process_broadcast(I2C_RESULT i2c_data)
{
  if (i2c_data.data_length == 2 && i2c_data.long_data[0] == 0xfa && sense_in )
  {
    smartbed.set_address(i2c_data.long_data[1]);
  }
}

/**
==========================
I2C slave worker procedure
==========================
**/
I2C_RESULT i2c_slave_worker(I2CSlave slave)
{

  I2C_BYTE node_address = I2C_BYTE(slave.read());

  /* This slave was not addressed */
  if (node_address.data == -1)
  {
    return I2C_RESULT();
  }

  /* This slave was addressed */
  if (node_address.addr == smartbed.get_address())
  {

    int node_register = slave.read();
    int read_write = slave.read();
    int n_write = read_write & 0x01;
    int addr = (read_write & 0xff) >> 1;

    if (n_write && addr == NODE_ADR)
    {
      /* Master requests read from registry */
      return I2C_RESULT(node_register);
    }
    else
    {
      /* Master wrote to slave registry */
      return I2C_RESULT(node_register, read_write);
    }
  }

  if (node_address.addr == 0x00)
  {
    /* Broadcast to all slaves */
    int data[MAX_I2C_DATA_SIZE];
    int length = 0;

    while (true)
    {
      int r_byte = slave.read();
      if (r_byte == -1)
        break;
      data[length] = r_byte;
      length++;
    }

    return I2C_RESULT(length, data);
  }

  return I2C_RESULT();
}
