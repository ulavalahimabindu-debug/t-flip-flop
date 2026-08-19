# 1011 Sequence Detector – Verilog

## Description

A **1011 sequence detector** designed using Verilog HDL and a **Finite State Machine (FSM)**.

The circuit monitors a serial input stream and generates a `detected` signal whenever the sequence **1011** is received.

This design supports **overlapping sequence detection**.

## Features

* Detects the `1011` sequence
* FSM-based design
* Overlapping sequence detection
* Synchronous data processing
* Asynchronous reset
* Verilog testbench included
* Simulation output included

## Folder Structure

```text
Sequence-Detector-Verilog/
│
├── src/
│   └── sequence_detector.v
│
├── tb/
│   └── sequence_detector_tb.v
│
├── output/
│   └── output.txt
│
└── README.md
```

## Input

| Signal    | Width | Description       |
| --------- | ----: | ----------------- |
| `clk`     | 1-bit | Clock signal      |
| `reset`   | 1-bit | Resets the FSM    |
| `data_in` | 1-bit | Serial input data |

## Output

| Signal     | Width | Description                         |
| ---------- | ----: | ----------------------------------- |
| `detected` | 1-bit | Becomes `1` when `1011` is detected |

## FSM States

| State | Matched Sequence |
| ----- | ---------------- |
| `S0`  | No match         |
| `S1`  | `1`              |
| `S2`  | `10`             |
| `S3`  | `101`            |
| `S4`  | `1011`           |

## State Flow

```text
S0
 |
 | 1
 v
S1
 |
 | 0
 v
S2
 |
 | 1
 v
S3
 |
 | 1
 v
S4
 |
 | detected = 1
 |
 +----> Continue detecting
```

## Example

For the input stream:

```text
1011011
```

The sequence `1011` occurs twice:

```text
1011 011
    ↑

101 1011
    ↑
```

Therefore, the detector generates:

```text
0 0 0 1 0 0 1
```

## Simulation

This project can be simulated using **Icarus Verilog**.

### Compile

```bash
iverilog -o sequence_sim src/sequence_detector.v tb/sequence_detector_tb.v
```

### Run

```bash
vvp sequence_sim
```

### Save Output

```bash
vvp sequence_sim > output/output.txt
```

## Expected Output

```text
======================================
       1011 SEQUENCE DETECTOR
======================================
Time    Data_In         Detected
--------------------------------------
20      1               0
30      0               0
40      1               0
50      1               1
60      0               0
70      1               0
80      1               1
--------------------------------------
Expected: Sequence 1011 detected twice
======================================
       SIMULATION COMPLETED
======================================
```

## Learning Outcomes

This project demonstrates:

* Finite State Machines
* Sequential logic
* State transitions
* Pattern detection
* Overlapping sequence detection
* Verilog `case` statements
* Testbench development
* Simulation and verification

## Future Improvements

The project can be extended to:

* Detect different sequences such as `1101`
* Add multiple sequence detection
* Implement a Moore/Mealy comparison
* Add waveform generation
* Implement on an FPGA

## Author

**Nikhila**

## License

This project is created for educational and learning purposes.
