# Byte Calculator on BASYS 3 FPGA

![FPGA](https://github.com/SharpPig/BASYS-3-FPGA-Board-16-Bit-Calculator/blob/main/Basys3-Xilinx-1000x755.jpg?raw=true)


## Table of Contents
- [Description](#description)
- [Project Structure](#project-structure)
- [Components](#components)
- [File Descriptions](#file-descriptions)
- [Getting Started](#getting-started)
- [How to Use](#how-to-use)
- [Board Configuration](#board-configuration)
- [Contributing](#contributing)
- [License](#license)

## Description

The FPGA Byte Calculator on BASYS 3 is a project that demonstrates a simple byte calculator implemented on the BASYS 3 FPGA board. Users can set two 8-bit values using switches and perform various mathematical operations with buttons. The result is displayed in binary on 16 LEDs.

## Project Structure

The project consists of the following files:

- **README.txt**: Project overview, components, and basic instructions.
- **btn_debouncer.v**: Verilog module for debouncing a button input.
- **byte_calculator.v**: Verilog module for the byte calculator.
- **const_byte_calculator.xdc**: Xilinx Design Constraints file for pin assignments.
- **top.v**: Top-level Verilog module integrating components.

## Components

- **Switches**: 16 switches for byte operand A and B.
- **LEDs**: 16 LEDs to display the outcome of the math operation.
- **Buttons**: 5 buttons for different math operations (addition, subtraction, multiplication, division, modulus).
- **Clock**: 100MHz clock input for synchronization.

## File Descriptions

1. **README.txt**: Overview of the project, components, and usage instructions.
2. **btn_debouncer.v**: Verilog module for button debouncing to stabilize button input.
3. **byte_calculator.v**: Verilog module for byte calculator logic.
4. **const_byte_calculator.xdc**: Xilinx Design Constraints file for pin assignments.
5. **top.v**: Top-level Verilog module integrating all components.

## Getting Started

To get started with the project, clone the repository to your local machine:

```bash
git clone https://github.com/your-username/byte-calculator-fpga.git
```

## How to Use
- Open the project in your FPGA development environment.
- Configure the project according to your FPGA board specifications.
- Synthesize, implement, and generate the bitstream for your FPGA.
- Upload the bitstream to your FPGA board.
## Board Configuration
The board configuration is specified in the const_byte_calculator.xdc file. Ensure that the pin assignments match your BASYS 3 FPGA board.

## Contributing
Contributions are welcome! Feel free to fork the repository, make improvements, and create a pull request. Please follow the Contribution Guidelines.

## License
This project is licensed under the MIT License.
