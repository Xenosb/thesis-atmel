# Smartbed firmware

This directory contains firmware for the smartbed embedded project. It collects data from FSR sensors and communicates it to Intel Edison board over I2C bus.

## Environment setup

It uses [mbed](https://www.mbed.com/en/) framework and is meant to build with [platformio](http://platformio.org/). Since neither mbed nor platformio provide out of the box support for [ATSAMD21J16B](http://www.microchip.com/wwwproducts/en/ATSAMD21J16) used in v1 of the PCB.

This guide is currently written for Linux and tested on Fedora but is easily portable to Windows, OSX and other Linux distributions.

### Initial setup

If this is your first project with platformio, you will have to set it up. Just follow the guide on their web as it is quite easy to integrate no matter which OS you are using. 

1. Install [platformio](http://platformio.org/platformio-ide) _(VS Code is suggested as Atom hasn't been tested)_
2. For the convenience you can copy pio binaries to /usr/bin

```sh
cp ~/.platformio/penv/bin/pio /usr/bin
```

3. Clone the project from git

```sh
git clone https://github.com/Xenosb/thesis-atmel
```

4. Open the cloned folder with VS Code/Atom
5. Try to run build _(CTRL+ALT+B)_
6. This will most probably fail

### Adding a custom platformio board

1. Create a new boards folder in platformio folder in user home directory

```sh
mkdir ~/.platformio/boards
```

 2. Create a json configuration file ```smartbed.json``` for the board
 3. Following configuration is based on SAMD21 Xplained board wich uses different variant of current microcontroller.

 ```JSON
 {
    "build": {
        "cpu": "cortex-m0plus",
        "f_cpu": "48000000L",
        "mcu": "atsamd21j16a"
    },
    "debug": {
        "tools": {
            "cmsis-dap": {
                "server": {
                    "package": "tool-openocd",
                    "executable": "bin/openocd",
                    "arguments": ["-f", "scripts/board/atmel_samd21_xplained_pro.cfg"]
                },
                "onboard": true
            }
        }
    },
    "frameworks": [
        "mbed"
    ],
    "name": "Atmel SAMD21-XPRO",
    "upload": {
        "maximum_ram_size": 8192,
        "maximum_size": 65536,
        "openocdcfg": "atmel_samd21_xplained_pro.cfg",
        "protocol": "openocd"
    },
    "url": "https://developer.mbed.org/platforms/SAMD21-XPRO/",
    "vendor": "Atmel"
}
```
### Adding a custom mbed board

1. Open ```~/.platformio/platforms/atmelsam/builder/frameworks/mbed/mbed.py```
2. Add board to ```MBED_VARIANTS``` dictionary so that it looks like this:
```python
MBED_VARIANTS = {
    "blueboard_lpc11u24": "LPC11U24",
    "dipcortexm0": "LPC11U24",
    "seeedArchPro": "ARCH_PRO",
    ...
    ...
    "disco_f030r8": "NUCLEO_F030R8",
    "smartbed": "SAMD21J16A"
}
```
3. Add target to ```.platformio/packages/framework-mbed/targets/targets.json```
```json
    "SAMD21J16A": {
        "inherits": ["Target"],
        "core": "Cortex-M0+",
        "macros": ["__SAMD21J16A__", "I2C_MASTER_CALLBACK_MODE=true", "EXTINT_CALLBACK_MODE=true", "USART_CALLBACK_MODE=true", "TC_ASYNC=true"],
        "extra_labels": ["Atmel", "SAM_CortexM0P", "SAMD21"],
        "supported_toolchains": ["GCC_ARM", "ARM", "uARM"],
        "device_has": ["ANALOGIN", "ANALOGOUT", "I2C", "I2CSLAVE", "I2C_ASYNCH", "INTERRUPTIN", "PORTIN", "PORTINOUT", "PORTOUT", "PWMOUT", "RTC", "SERIAL", "SERIAL_ASYNCH", "SERIAL_FC", "SLEEP", "SPI", "SPISLAVE", "SPI_ASYNCH"],
        "release_versions": ["2"],
        "device_name": "ATSAMD21J16A"
    },
```

4. Create a new platformio board variant by copying SAMDJ18A to SAMDJ16A
```sh
cp -r ~/.platformio/packages/framework-mbed/targets/TARGET_Atmel/TARGET_SAM_CortexM0P/TARGET_SAMD21J18A ~/.platformio/packages/framework-mbed/targets/TARGET_Atmel/TARGET_SAM_CortexM0P/TARGET_SAMD21J16A
```
5. Modify the ```~/.platformio/packages/framework-mbed/targets/TARGET_Atmel/TARGET_SAM_CortexM0P/port_api.c``` by adding ifdef with PORTA_MASK and PORTB_MASK
```c
#elif defined(TARGET_SAMD21J16A)
  #define PORTA_MASK  0xDBFFFFFF  // mask for available pins in Port A
  #define PORTB_MASK  0xC0C3FFFF  // mask for available pins in Port B
```
6. Open ```~/.platformio/packages/framework-mbed/targets/TARGET_Atmel/TARGET_SAM_CortexM0P/TARGET_SAMD21J16A/device/TOOLCHAIN_GCC_ARM/samd21j16a.ld```
7. Modify the MEMORY in load script
```
MEMORY {
    rom (rx)  : ORIGIN = 0x00000000, LENGTH = 0x00010000
    ram (rwx) : ORIGIN = 0x20000000 + 0xB4, LENGTH = 0x00002000 - 0xB4
}
```
8. Modify the STACK_SIZE
```
STACK_SIZE = DEFINED(STACK_SIZE) ? STACK_SIZE : DEFINED(__stack_size__) ? __stack_size__ : 0x500;
```
9. Install pip if needed using apt/dnf/brew/exe
10. Regenerate variants using tox
```sh
cd ~/.platformio/packages/framework-mbed/platformio
sudo pip install tox
tox
```
11. Check tha ```SAMD21J16A/``` folder was generated in ```/variants```
12. Go back to VS Code/Atom and try to build the project again. This time it should succeed.

## Building the project

In VS Code you can just press CTRL+ALT+B. It will generate .elf and .bin files in ```<PROJECTDIR>/.pioenvs/smartbed/```

## Uploading to the hardware

Current setup involves using J-Link EDU and uploading using JLinkExe. Plan is to switch to OpenOCD and sam-ba in future.

1. Connect PCB and J-Link. If you don't have J-Link to Cortex debug connetctor breakout, use "breadboard" dupont cables.

![J-Link pinout](https://github.com/Xenosb/thesis-atmel/firmware/images/conjtag.png "J-Link pinout")

![Pinout on the PCB](https://github.com/Xenosb/thesis-atmel/firmware/images/conpng.png "Pinout on the PCB")

2. Download and install [J-Link](https://www.segger.com/downloads/jlink) from Segger.
3. Start the J-Link commander and connect to the board.
```sh
JLinkExe -device atsamd21j16b -if swd -speed 4000
> connect
```
4. If everything went well, you will see something like this
```
Connecting to target via SWD
Found SW-DP with ID 0x0BC11477
Found SW-DP with ID 0x0BC11477
Scanning APs, stopping at first AHB-AP found.
AP[0] IDR: 0x04770031 (AHB-AP)
AHB-AP ROM: 0x41003000 (Base addr. of first ROM table)
CPUID reg: 0x410CC601. Implementer code: 0x41 (ARM)
```
5. Now load and start the program
```
> loadbin <PROJECTDIR>/firmware/.pioenvs/smartbed/firmware.bin 0
> r
> g
```