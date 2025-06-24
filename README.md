# Multi-Output Adjustable Digital Power Supply

![Project Preview](https://github.com/GarablueX/Multi-Output-Adjustable-Digital-Power-Supply/raw/main/assets/preview.jpg)  
*Add your own project photo or schematic here*

## Overview

This project is a **multi-output adjustable digital power supply** built around the **PIC16F876A microcontroller**. It provides multiple regulated voltage outputs, each adjustable via the microcontroller’s digital interface. The design includes both hardware and firmware, simulated and tested in **Proteus**.

---

## Features

- Multiple voltage outputs (e.g., 5V, 9V, 12V) using standard voltage regulators (LM317, 7805, 7809, 7812)  
- Digital control of output voltage levels via PIC16F876A MCU  
- Proteus simulation for schematic verification and PCB layout  
- Onboard filtering capacitors for stable output voltages  
- User-friendly design for hobbyists and electronics students

---

## Hardware

- **Microcontroller:** PIC16F876A  
- **Voltage Regulators:** LM317 (adjustable), 7805, 7809, 7812 (fixed outputs)  
- **Capacitors:** 0.1µF and 10µF on regulator input and output for noise reduction  
- **Power Supply Input:** 12V DC (or as specified)  
- **PCB Design:** Created and simulated in Proteus  

---

## Software/Firmware

- Firmware written in C using mikroC (or specify your compiler)  
- Controls output voltages through digital potentiometers or DAC (depending on your design)  
- Interfaces with voltage regulators for precise voltage adjustment  
- Includes basic UI or serial communication (if any)  

---

## Installation & Usage

1. **Hardware Setup:** Assemble the PCB according to the schematic in the `/hardware` folder.  
2. **Programming:** Flash the PIC16F876A microcontroller with the firmware located in the `/firmware` folder using a compatible programmer.  
3. **Power On:** Connect a suitable 12V power supply and power on the device.  
4. **Adjust Voltages:** Use the digital controls or interface to set the desired output voltages.  
5. **Testing:** Verify output voltages using a multimeter or oscilloscope.

---

## Project Structure

