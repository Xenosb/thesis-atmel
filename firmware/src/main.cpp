#include "main.hpp"

I2CSlave slave(PA08, PA09);
DigitalOut led(PB30);
Sensors sensors();
Smartbed smartbed;

/**
==================
Main loop function
==================
*/
int main()
{

  led = 1;

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
  switch(i2c_data.type) {
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
=============================
Process write actions to node
=============================
**/
void process_write(I2C_RESULT i2c_data)
{
  switch (i2c_data.reg) {
    case 0: // Address
      smartbed.set_address(i2c_data.data[0]);
      break;
    default:
      return;
  }
}

/**
============================
Process read actions to node
============================
**/
void process_read(I2C_RESULT i2c_data)
{
}

/**
=================================
Process broadcast actions to node
=================================
**/
void process_broadcast(I2C_RESULT i2c_data)
{
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
  if (node_address.addr == NODE_ADR)
  {

    int node_register = slave.read();
    I2C_BYTE read_write = I2C_BYTE(slave.read());

    if (read_write.n_write && read_write.addr == NODE_ADR)
    {
      /* Master requests read from registry */
      slave.write(0x1a);
      return I2C_RESULT(node_register);
    }
    else
    {
      /* Master wrote to slave registry */
      int data = slave.read();
      uint8_t data_array[1] = {(uint8_t)data};
      return I2C_RESULT(node_register, data_array);
    }
  }

  if (node_address.addr == 0x00)
  {
    /* Broadcast to all slaves */
    uint8_t data[MAX_I2C_DATA_SIZE];
    int length = 0;

    while (true)
    {
      int r_byte = slave.read();
      if (r_byte == -1)
        break;
      data[length] = (uint8_t)r_byte;
      length++;
    }

    return I2C_RESULT(length, data);
  }

  return I2C_RESULT();
}
