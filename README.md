


# ⏱️ Clock Divider in Verilog

This project implements a flexible **clock divider** module using Verilog HDL.  
The module supports four selectable output frequencies derived from a 50MHz input clock, based on a 2-bit control signal.

---

## 📁 Files Included

- `clock_divider.v` – Main Verilog module
- `clock_divider_tb.v` – Testbench for simulation
- `rtl_diagram.pdf` – RTL block diagram of the circuit

---

## ⚙️ Features

- Input: `clk`, `reset`, `div[1:0]`
- Output: `div_clk` – toggled clock at selected frequency
- Frequencies supported:
  - `00`: 100Hz
  - `01`: 1kHz
  - `10`: 10kHz
  - `11`: 100kHz

---

## 🧪 Simulation

Run simulation with ModelSim or other tools to validate:
- Frequency division behavior
- Reset logic
- Timing diagrams

---




