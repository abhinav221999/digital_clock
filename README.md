# Digital_Clock
# Description
I have designed a basic Digital clock using **iverilog** and used **gtkwave** for simulation purposes. The clock is **negative-edge triggered** with an asynchronous active high set and reset buttons
# How to Use
* Download the files from the Codes directory
* Create a seperate folder in the bin folder of iverilog and copy all the files in it
* Open the Command Prompt in that folder and type the following commands:
  * `iverilog -o display secondCounter.v minuteCounter.v hourCounter.v dispay.v testbench.v`
  * `vvp display`
* A file named **dispaly.vcd** will be generated
* Now enter the command: `gtkwave display.vcd`
# Set and Reset Functionalities
A set Functionality has also been provided in the clock which when activated makes the clock read **12:30** and also a reset functionality which makes the clock zero for as long as it is active.
