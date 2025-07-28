# Multi-Output Adjustable Digital Power Supply ⚡

This is a practical, microcontroller-controlled digital power supply project. It allows users to switch between **3.3V, 5V, 9V, and 12V outputs** using push buttons. A 16x2 LCD shows the selected voltage in real time.

Designed using **PIC16F876A**, **LM317**, **7805**, **7809**, and **7812** voltage regulators, this project showcases real-world digital control, hardware interfacing, and circuit design — all fully simulated in **Proteus** and written in **MikroC**.

---

## 📅 Features

- 4 push buttons for selecting voltages
- 4 MOSFETs switch the regulator outputs
- LCD (16x2) displays the selected voltage
- Controlled by **PIC16F876A**
- Simulated in Proteus
- MikroC PRO for PIC source code included
- Updated new PCB View using new software

---

## 🔧 Hardware Used

| Component       | Description                        |
|----------------|------------------------------------|
| PIC16F876A      | Microcontroller (MikroC programmed) |
| LM317           | Adjustable Regulator for 3.3V      |
| 7805, 7809, 7812| Fixed Voltage Regulators           |
| 2N6660 / IRFZ44 | Power MOSFETs                      |
| LCD 16x2        | Display for output voltage         |
| Push Buttons    | For voltage selection              |
| Capacitors      | 0.1µF & 10µF for filtering          |

---

## 📚 How It Works

- Each push button (RA0 to RA3) selects one voltage output
- The PIC activates a specific MOSFET (connected to RB0 to RB3)
- The MOSFET enables the corresponding voltage regulator output
- LCD displays the selected output voltage using PORTC

---

## 🧠 MikroC Logic Snippet

```c
if (RA0_bit == 1) {
    PORTB = 0b00000001;
    Lcd_Out(1, 1, "Output: 3.3V");
}
