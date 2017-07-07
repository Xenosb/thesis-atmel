#include "mbed.h"

#define EDISON_ADR 0x80

//I2CSlave slave(PA08, PA09);
//I2C master(PA08, PA09);

DigitalOut myled(PB30);

/*AnalogIn a00(PA02);
AnalogIn a01(PA03);
AnalogIn a02(PB08);
AnalogIn a03(PB09);
//AnalogIn a04(PA09);
AnalogIn a05(PA05);
AnalogIn a06(PA06);
AnalogIn a07(PA07);
AnalogIn a08(PB00);
//AnalogIn a09(PA08);
AnalogIn a10(PB02);
AnalogIn a11(PB03);
AnalogIn a12(PB04);
AnalogIn a13(PB05);
AnalogIn a14(PB06);
AnalogIn a15(PB07);

float sensors[16] = {};

int i = 0;
char data[4] = {0x0c, 0x0f, 0x50, 0xf5};

char buf[10];
char msg[] = "Slave!";
*/
/**
=========================
Read pressure sensor data
=========================

void sensors_read()
{
  sensors[0] = a00.read();
  sensors[1] = a01.read();
  sensors[2] = a02.read();
  sensors[3] = a03.read();
  //sensors[4] = a04.read();
  sensors[5] = a05.read();
  sensors[6] = a06.read();
  sensors[7] = a07.read();
  sensors[8] = a08.read();
  //sensors[9] = a09.read();
  sensors[10] = a10.read();
  sensors[11] = a11.read();
  sensors[12] = a12.read();
  sensors[13] = a13.read();
  sensors[14] = a14.read();
  sensors[15] = a15.read();
}
*/
/**
==========================
Print pressure sensor data
==========================

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
*/

/**
=========================
I2C master write register
=========================

void i2c_master() {
  master.frequency(400000);
  master.write(0x14, data, 1);
}
*/

/**
==========================
I2C slave respond register
==========================

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
*/
/**
==================
Main loop function
==================
*/
int main()
{

  myled = 1;

  //master.start();

  //slave.frequency(100000);
  //slave.address(0x0a);

  while (1)
  {
    
    //sensors_read();
    //sensors_print();

    //i2c_master();
    //i2c_slave();

    myled = (myled + 1) % 2;
    //printf("Ping\n");

    wait(0.2);
  }
}
