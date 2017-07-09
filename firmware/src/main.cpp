#include "main.hpp"

I2CSlave slave(PA08, PA09);

DigitalOut led(PB30);

AnalogIn FSR0(PB06);
AnalogIn FSR1(PB07);
AnalogIn FSR2(PB08);
AnalogIn FSR3(PB09);
AnalogIn FSR4(PA04);
AnalogIn FSR5(PA05);
AnalogIn FSR6(PA06);
AnalogIn FSR7(PA07);
AnalogIn FSR8(PB00);
AnalogIn FSR9(PB01);
AnalogIn FSR10(PB02);
AnalogIn FSR11(PB03);
AnalogIn FSR12(PA02);
AnalogIn FSR13(PA03);
AnalogIn FSR14(PB04);
AnalogIn FSR15(PB05);

float sensors[16] = {};

/**
=========================
Read pressure sensor data
=========================
**/
void sensors_read()
{
  sensors[0] = FSR0.read();
  sensors[1] = FSR1.read();
  sensors[2] = FSR2.read();
  sensors[3] = FSR3.read();
  sensors[4] = FSR4.read();
  sensors[5] = FSR5.read();
  sensors[6] = FSR6.read();
  sensors[7] = FSR7.read();
  sensors[8] = FSR8.read();
  sensors[9] = FSR9.read();
  sensors[10] = FSR10.read();
  sensors[11] = FSR11.read();
  sensors[12] = FSR12.read();
  sensors[13] = FSR13.read();
  sensors[14] = FSR14.read();
  sensors[15] = FSR15.read();
}


/**
==========================
Print pressure sensor data
==========================
**/
void sensors_print()
{
  printf("\n\r");

  for (int i=0;i<16;i++)
    printf("%d\t", i);
  printf("\n\r");

  for (int i=0;i<16;i++)
    printf("%.2f\t", sensors[i]);
  printf("\n\r");
}


/**
==========================
I2C slave respond register
==========================
**/
I2C_RESULT i2c_slave() {

  I2C_BYTE node_address = I2C_BYTE(slave.read());

  /* This slave was not addressed */
  if (node_address.data == -1) {
    return I2C_RESULT();
  }
  
  /* This slave was addressed */
  if (node_address.addr == NODE_ADR) {

    int node_register = slave.read();
    I2C_BYTE read_write = I2C_BYTE(slave.read());

    if (read_write.n_write && read_write.addr == NODE_ADR) {
      /* Master requests read from registry */
      slave.write(0x1a);
      return I2C_RESULT(node_register);

    } else {
      /* Master wrote to slave registry */
      int data = slave.read();
      uint8_t data_array[1] = {(uint8_t)data};
      led = !led;
      return I2C_RESULT(node_register, data_array);
    }

  }
  
  if (node_address.addr == 0x00) {
    /* Broadcast to all slaves */
    uint8_t data[MAX_I2C_DATA_SIZE];
    int length = 0;

    while (true) {
      int r_byte = slave.read();
      if (r_byte == -1)
        break;
      data[length] = (uint8_t)r_byte;
      length++;
    }

    if (data[0]==0x33 && data[1]==0x44 && data[2]==0x55) {
      led = !led;
      wait_ms(100);
      led = !led;
    }

    return I2C_RESULT(length, data);
  }

  return I2C_RESULT();
}


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

  while (1)
  {
    
    //sensors_read();
    //sensors_print();

    i2c_slave();

    //myled.write(sensors[15]>0.3);

    //myled = (myled + 1) % 2;
    //wait_ms(300);
  }
}
