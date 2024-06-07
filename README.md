# Layered_test_FullAdder
A Layered test bench for a Full Adder

This is simple Layered test bench for a design of a Full Adder.
It has a,
- transaction class
- generator
- driver
- interface
- monitor
- scoreboard
It doesnt have a refrence model.

The diagram below explains further on how the testbench works,
<img width="509" alt="image" src="https://github.com/CinnamonSandwich/Layered_test_FullAdder/assets/92498341/15296b64-f47e-448b-ba24-914736db2705">



Note : For the version of Vivado I'm using (2023.2) there is no support for generic mailboxes hence parametrised mailboxes are used with its parameter being the transaction class.
