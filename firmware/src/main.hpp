#define I2C_FREQ 100000
#define EDISON_ADR 0x0a
#define NODE_ADR 0x08

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

void sensors_read();
void sensors_print();
void i2c_slave();
int main();