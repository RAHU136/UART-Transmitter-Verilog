# UART Transmitter using Verilog HDL

## Overview
This project implements a UART (Universal Asynchronous Receiver Transmitter) Transmitter using Verilog HDL.

The design uses a Finite State Machine (FSM) with four states:
- IDLE
- START
- DATA
- STOP

The transmitter sends 8-bit data serially using UART protocol.

## Features
- FSM-based UART Transmitter
- 8-bit data transmission
- LSB-first transmission
- Busy signal indication
- Verilog Testbench
- GTKWave simulation

## Files
- uart_tx.v
- tb_uart_tx.v
- uart_tx.vcd
- uart_waveform.png

## FSM States
IDLE → START → DATA → STOP → IDLE

## Simulation

Compile:
iverilog -o uart_tx.vvp uart_tx.v tb_uart_tx.v

Run:
vvp uart_tx.vvp

View Waveform:
gtkwave uart_tx.vcd

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave

## Author
Rahul Kumaran
ECE Engineering Student
Aspiring RTL Design Engineer
