#include "mbed.h"

#define I2C_FREQ 100000
#define MAX_I2C_DATA_SIZE 100

#define EDISON_ADR 0x0a
#define NODE_ADR 0x06

class I2C_BYTE {
  public:
    int data;
    uint8_t addr;
    uint8_t n_write;

  I2C_BYTE(int data) {
    this->data = data;
    this->n_write = data & 0x01;
    this->addr = (data & 0xff) >> 1;
  }
};

class I2C_RESULT {

  enum i2c_msg_t { None, WriteAddressed, WriteBroadcasted, ReadAddressed };

  public:
    i2c_msg_t type;
    int reg;
    int data_length;
    uint8_t *data;
  
  I2C_RESULT() {
    this->type = None;
  }

  I2C_RESULT(int reg) {
    this->type = ReadAddressed;
    this->reg = reg;
  }

  I2C_RESULT(int data_length, uint8_t *data) {
    this->type = WriteBroadcasted;
    this->data_length = data_length;
    this->data = data;
  }

  I2C_RESULT(int reg, int data_length, uint8_t *data) {
    this->type = WriteAddressed;
    this->reg = reg;
    this->data_length = data_length;
    this->data = data;
  }
};

void sensors_read();
void sensors_print();
I2C_RESULT i2c_slave();
int main();
