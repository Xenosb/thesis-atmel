#define MAIN

#include "mbed.h"
#include "Smartbed.hpp"

#define I2C_FREQ 100000
#define MAX_I2C_DATA_SIZE 100

#define EDISON_ADR 0x0a
#define NODE_ADR 0x06

I2C_RESULT i2c_slave_worker(I2CSlave slave);
void process_i2c_call(I2C_RESULT i2c_data);
void process_read(I2C_RESULT i2c_data);
void process_write(I2C_RESULT i2c_data);
void process_broadcast(I2C_RESULT i2c_data);
int main();
