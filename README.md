# RISC-V CPU Implementation in Verilog
This is a simple (single cycle datapath) 32-bit RISC-V compatable CPU. I plan to add more complexity this project progresses, as this project is meant as a way for myself to learn about computer architecture and logic design. As such, all suggestions/corrections/improvements are welcome.

Note that none of the code in this project is AI generated in order to improve the learning experience. Most of this information comes from online resources, which I will do my best to keep track of in the [Resources/References](https://github.com/SamuelWang05/RISC-V-CPU?tab=readme-ov-file#resourcesreferences) section of this readme. For a quick "cheat sheet", my notes can be found in the [Definitions](https://github.com/SamuelWang05/RISC-V-CPU#definitions) section

## Goals/Progress updates:
- Currently working on these components: Mux, ALU
- Completed components: [None]
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

## Definitions
There are many terms (often confusing) when tackling a large project like this. This section is dedicated for my notes, with the hope that it will be useful for anyone who stumbles onto this project.

- **CPU (Central processing unit)**: General purpose processing component that executes instructions of a program. The components that make up differenet CPUs are generally similar (ALU, Registers, etc. which are explained later).

  Most CPUs go through a "Fetch, Decode, Execute" cycle - they will fetch (take in) an instruction, decode what that instruction means, and then execute it. There are countless creative and brilliant ways on how to make this Fetch, Decode, Execute cycle faster (pipelining, branch prediction, caches, etc.) that have allowed modern-day CPUs to become much faster.

- **Opcode (operation code)**: A special pattern of binary values that are passed to specific components in the CPU. This is how the CPU is able to take machine code (1's and 0's) and execute it.
- **ALU (Arithmetic Logic Unit)**: A component of the CPU that handles arithmetic logic, such as adding, subtracting, AND'ing, etc.
- **Registers**: One type of memory (a component that stores data). Small in size, but fast to read/write data.
- **Control Unit**: Organizes the Fetch, Decode, Execute cycle. Coordinates the ALU, registers, and other components.
- **ISA (Instruction set architecture)**: Specifies the behavior implied by the machine code. This is what it means to have a "RISC-V CPU", it supports the RISC-V ISA. Note that the specific implementation of the same ISA can differ.
- **Microarchitecture**: How the ISA is implemented in a particular processor. It may describe how components like the ALU and registers are connected.

## Resources/References
[General Info about CPUs (Wikipedia)](https://en.wikipedia.org/wiki/Central_processing_unit)

[Lecture on main RISC-V CPU components](https://passlab.github.io/CSE564/notes/lecture08_RISCV_Impl.pdf)

[Detailed Explanation of RISC-V single cycle datapath architecture](https://medium.com/@hassu20083/instruction-set-architecture-risc-v-single-cycle-datapath-8277381b87da)
