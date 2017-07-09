#include "mbed.h"

class I2C_BYTE
{
public:
  int data;
  uint8_t addr;
  uint8_t n_write;

  I2C_BYTE(int data)
  {
    this->data = data;
    this->n_write = data & 0x01;
    this->addr = (data & 0xff) >> 1;
  }
};

class I2C_RESULT
{
public:
  enum I2C_MSG_T
  {
    None,
    WriteAddressed,
    WriteBroadcasted,
    ReadAddressed
  };

  I2C_MSG_T type;
  int reg;
  int data_length;
  uint8_t *data;

  I2C_RESULT()
  {
    this->type = None;
  }

  I2C_RESULT(int reg)
  {
    this->type = ReadAddressed;
    this->reg = reg;
  }

  I2C_RESULT(int data_length, uint8_t *data)
  {
    this->type = WriteBroadcasted;
    this->data_length = data_length;
    this->data = data;
  }

  I2C_RESULT(int reg, int data_length, uint8_t *data)
  {
    this->type = WriteAddressed;
    this->reg = reg;
    this->data_length = data_length;
    this->data = data;
  }
};

class Sensors
{
private:
  AnalogIn FSR[16] = {
      PB06, PB07, PB08, PB09, PA04, PA05, PA06, PA07,
      PB00, PB01, PB02, PB03, PA02, PA03, PB04, PB05};
  float sensor_values[16];

public:
  float *get_all_sensors()
  {
    for (int i = 0; i < 16; i++)
    {
      sensor_values[i] = FSR[i].read();
    }
    return sensor_values;
  }

  void print_all_sensors()
  {
    printf("\n\r");

    for (int i = 0; i < 16; i++)
      printf("%d\t", i);
    printf("\n\r");

    for (int i = 0; i < 16; i++)
      printf("%.2f\t", sensor_values[i]);
    printf("\n\r");
  }
};

class Smartbed
{
private:
  uint8_t address;

public:
  Smartbed() {
    this->address = 0x7f;
  }

  void set_address(uint8_t address) {
    this->address = address;
  }

  uint8_t get_address() {
    return this->address;
  }
};