# Simple ALU Design

This repository contains a Quartus II lab project that implements a basic 8-bit
ALU in VHDL. The design also includes a decoder,
latch, a small FSM, and seven-segment display logic used in the lab exercises.

## What's inside
- `lab 6 quartus/` – Quartus project files (`.qpf`, `.qsf`), VHDL sources, block diagrams (`.bdf`), and waveform simulation files (`.vwf`).
- Example waveform files: `prob1waveform.vwf`, `prob2waveform.vwf`, `prob3waveform.vwf`.
- Core VHDL modules: `ALU.vhd`, `ALU2.vhd`, `ALU3.vhd`, `decoder.vhd`, `latch1.vhd`, `machine.vhd`, `sseg.vhd`.

## ALU operations (high level)
At a high level, the ALU supports add, subtract (with negative flag), bitwise
NOT, NOR, NAND, OR, XOR, AND, and XNOR via one-hot `OP` control lines.

## Requirements
- Quartus II 13.0.1 (project created with this version; other versions not verified).

## How to open
1. Open Quartus II.
2. Open `lab 6 quartus/lab6.qpf`.
3. Compile or run the provided waveform files for the lab problems.
