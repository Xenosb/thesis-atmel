#include "mbed.h"

#define EDISON_ADR 0x80

I2CSlave slave(PA08, PA09);

DigitalOut myled(PB30);

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

int i = 0;
char data[4] = {0x0c, 0x0f, 0x50, 0xf5};

char buf[10];
char msg[] = "Slave!";

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

  for (i=0;i<16;i++)
    printf("%d\t", i);
  printf("\n\r");

  for (i=0;i<16;i++)
    printf("%.2f\t", sensors[i]);
  printf("\n\r");
}


/**
==========================
I2C slave respond register
==========================
**/
void i2c_slave() {
  int i = slave.receive();
  
  switch (i) {
      case I2CSlave::ReadAddressed:
          slave.write(msg, strlen(msg) + 1);
          break;
      case I2CSlave::WriteGeneral:
          slave.read(buf, 10);
          printf("Read G: %s\n", buf);
          break;
      case I2CSlave::WriteAddressed:
          slave.read(buf, 10);
          printf("Read A: %s\n", buf);
          break;
  }

  for(int i = 0; i < 10; i++) buf[i] = 0;
  slave.stop();
}


/**
==================
Main loop function
==================
*/
int main()
{

  myled = 1;

  //slave.frequency(100000);
  //slave.address(0x0a);

  while (1)
  {
    
    sensors_read();
    //sensors_print();

    i2c_slave();

    myled = (myled + 1) % 2;

    wait(0.2);
  }
}
