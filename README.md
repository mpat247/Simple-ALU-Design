# Simple ALU Design

This repository contains a Quartus II lab project (second/third-year course level)
that implements a basic 8-bit ALU in VHDL. The design also includes a decoder,
latch, a small FSM, and seven‑segment display logic used in the lab exercises.

## What's inside
- `lab 6 quartus/` – Quartus project files (`.qpf`, `.qsf`), VHDL sources, block
  diagrams (`.bdf`), and waveform simulation files (`.vwf`).
- Core VHDL modules: `ALU.vhd`, `decoder.vhd`, `latch1.vhd`, `machine.vhd`,
  `sseg.vhd`.

## ALU operations (high level)
The ALU supports common operations such as add, subtract (with negative flag),
bitwise NOT, AND, OR, XOR, NAND, NOR, and XNOR via one‑hot `OP` control lines.

## How to open
1. Open Quartus II (project was created with 13.0.1, newer versions should work).
2. Open `lab 6 quartus/lab6.qpf`.
3. Compile or run the provided waveform files for the lab problems.
