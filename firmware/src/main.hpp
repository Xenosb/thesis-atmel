#define MAIN

#include "mbed.h"
#include "Smartbed.hpp"

#define I2C_FREQ 100000
#define MAX_I2C_DATA_SIZE 100

#define EDISON_ADR 0x0a
#define NODE_ADR 0x06

#define I2C_SDA_PIN PA08
#define I2C_SCL_PIN PA09
#define LED_PIN PB30
#define SENSE_IN_PIN PA28
#define SENSE_OUT_PIN PA27

#define SENSOR_NUMBER 16

I2C_RESULT i2c_slave_worker(I2CSlave slave);
void process_i2c_call(I2C_RESULT i2c_data);
void process_read(I2C_RESULT i2c_data);
void process_write(I2C_RESULT i2c_data);
void process_broadcast(I2C_RESULT i2c_data);
int main();
