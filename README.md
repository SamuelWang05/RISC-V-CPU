# RISC-V CPU Implementation in Verilog

This is a simple (single cycle datapath) 32-bit RISC-V compatable CPU. I plan to add more complexity this project progresses, as this project is meant as a way for myself to learn about computer architecture and logic design. As such, some of the terminology may be incorrect, although I will do my best to keep everything correct. All suggestions/fixes are welcome.

## Goals/Progress updates:
- Currently working on these components: Mux, ALU
- Completed these components: [None]
- Components to be completed: Instruction memory, Data memory, Registers, Program counter, Control, Sign extend

Currently supported op codes:
| Instruction | Op Code | Functionality |
| :---------: | :-----: | :----------- |
| add         | TBD    | _add_: add two #'s together |
| sub         | TBD    | _subtract_: subtract two #'s together |
| addi        | TBD    | _add immmediate_: add a "variable" and a constant value |
| lw          | TBD    | _load word_: put a value in memory |
| sw          | TBD    | _store word_: get a value from memory |
| beq         | TBD    | _branch if equal_: jump to instruction if condition met |
