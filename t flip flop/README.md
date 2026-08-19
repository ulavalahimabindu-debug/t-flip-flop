# T Flip-Flop using Verilog

## Description

A T Flip-Flop toggles its output when `T = 1` and holds its previous state when `T = 0`.

## Truth Table

| T | Operation | Q(next) |
| - | --------- | ------- |
| 0 | No Change | Q       |
| 1 | Toggle    | ~Q      |

## Inputs

* `T` – Toggle input
* `CLK` – Clock input

## Outputs

* `Q` – Normal output
* `Q_bar` – Complementary output

## Project Files

```text
T_Flip_Flop/
├── t_flip_flop.v
├── t_flip_flop_tb.v
├── output.txt
└── README.md
```

## Tools Used

* Verilog HDL
* VS Code
* Icarus Verilog
* Git
* GitHub

## How to Run

Compile:

```bash
iverilog -o t_sim t_flip_flop.v t_flip_flop_tb.v
```

Run:

```bash
vvp t_sim
```

Save output:

```bash
vvp t_sim > output.txt
```

View output:

```bash
type output.txt
```

## Learning Outcomes

* T Flip-Flop operation
* Sequential logic
* Clocked circuits
* Toggle operation
* Verilog testbench
* Verilog simulation
