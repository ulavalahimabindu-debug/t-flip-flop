# JK Flip-Flop using Verilog

## Description

This project implements a **JK Flip-Flop** using Verilog HDL.

A JK Flip-Flop is a sequential logic circuit used to store one bit of information. It is an improved version of the SR Flip-Flop because it does not have an invalid input condition.

The output changes on the **positive edge of the clock**.

## Inputs

* `J` – Set input
* `K` – Reset input
* `CLK` – Clock input

## Outputs

* `Q` – Normal output
* `Q_bar` – Complementary output

## Truth Table

| J | K | Operation | Q(next) |
| - | - | --------- | ------- |
| 0 | 0 | No Change | Q       |
| 0 | 1 | Reset     | 0       |
| 1 | 0 | Set       | 1       |
| 1 | 1 | Toggle    | ~Q      |

## Files

```text
jk_flip_flop.v       → JK Flip-Flop design
jk_flip_flop_tb.v    → Testbench
output.txt           → Simulation output
README.md            → Project documentation
```

## Tools Used

* Verilog HDL
* VS Code
* Icarus Verilog
* Git
* GitHub

## How to Run

Compile the design and testbench:

```bash
iverilog -o jk_sim jk_flip_flop.v jk_flip_flop_tb.v
```

Run the simulation:

```bash
vvp jk_sim
```

Save the simulation output:

```bash
vvp jk_sim > output.txt
```

View the output:

```bash
type output.txt
```

## Learning Outcome

This project demonstrates:

* Sequential logic
* JK Flip-Flop operation
* Clocked circuits
* Positive-edge triggering
* `always @(posedge CLK)`
* `case` statements
* Non-blocking assignments
* Toggle operation
* Testbench development
* Verilog simulation
