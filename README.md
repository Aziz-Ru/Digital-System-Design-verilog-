
# Digital System Design in Verilog
Verilog is a hardware description language (HDL) used for designing and modeling digital circuits and systems. It's primarily used in the field of digital design and electronic engineering to describe the behavior and structure of digital circuits, ranging from simple logic gates to complex systems on a chip (SoCs).


## Lessons Learned

| Gate Type  | Syntax |           Description                              |
| -----------| ------------- | --------------------------------------------|
| and| and u0(out, i1, i2, …)|Performs AND operation on two or more inputs |
|or  |or u0(out, i1, i2, …)  |Performs OR operation on two or more inputs  |
|xor |xor u0(out, i1, i2, …) |Performs XOR operation on two or more inputs |
|nand|nand u0(out, i1, i2, …)|Performs NAND operation on two or more inputs|
|nor |nor u0(out, i1, i2, …) |Performs NOR operation on two or more inputs |
|xnor|xnor u0(out, i1, i2, …)|Performs XNOR operation on two or more inputs|
|not |not u0(out, in)        |The not passes input to the output as an inverted version|
|buf |buf u0(out, in)        |The buffer (buf) passes input to the output as it is|


## Features
- Binary to Gray Code Converter
- Gray to Binary Code Converter
- BCD to Excess 3 code Converter
- Excess 3 to BCD code Converter
- Full Adder
- 4-bit binary Adder-Subtractor
- BCD Adder
- JK Flip-Flop using Master Slave JK
- 4 bit asynchronous mod 10 counter
- 3 bit synchronous up-down counter
- Random sequence counter


## Expriments:
-
-
|Expriment Name|Basics|Verilog Code|
|---------|------|------------|
|Binary To Gray & Gray To Binary|[Theory From GeeksForGeeks](https://www.geeksforgeeks.org/code-converters-binary-to-from-gray-code) |[BinToGray.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/BinToGray.v) & [ GrayToBin.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/GrayToBin.v)|
|BCD To Excess3 & Excess3 To BCD|[Theory From GeeksForGeeks](https://www.geeksforgeeks.org/code-converters-bcd8421-to-from-excess-3)|[BcdToExcess3.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/BcdToExcess3.v) & [Excess3ToBcd.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/Excess3ToBcd.v)|
|4-bit binary Adder-Subtractor |[Theory From GeeksForGeeks](https://www.geeksforgeeks.org/4-bit-binary-adder-subtractor/)|[BinaryAdder](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/FULL_ADDER.v)|
|BCD Adder in Digital Logic|[Theory From GeeksForGeeks](https://www.geeksforgeeks.org/bcd-adder-in-digital-logic/)|[BCD_ADDER.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/BCD_ADDER.v)|
|4 bit asynchronous mod 10 counter|[Youtube](https://www.youtube.com/watch?v=4NEjjeIyA-4) |[Mod10Counter.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/Mod10Counter.v)|
|3 bit synchronous up-down counter|[Elctronics Tutorial](https://www.electronics-tutorials.ws/counter/count_4.html)|[Updown_Counter.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/Updown_Counter.v)|
|Random_sequence counter |[Youtube](https://www.youtube.com/watch?v=-tl59_wGPTg&t=744s) |[Random_sequence.v](https://github.com/Aziz-Ru/Digital-System-Design-verilog-/blob/main/LABCode/Random_sequence.v)|

## Acknowledgements

-  [chipverify](https://www.chipverify.com/verilog/verilog-gate-level-modeling)
 - [Geeksforgeeks](https://www.geeksforgeeks.org/)
 - [Electronics-Tutorials](https://www.electronics-tutorials.ws)
 - [Youtube](https://www.youtube.com/watch?v=-tl59_wGPTg&t=744s)

