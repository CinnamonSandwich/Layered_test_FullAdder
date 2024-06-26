`timescale 1ns / 1ps

//`include "interface.sv"
//`include "test.sv"
module testbench;
  
  intf i_intf();
  
  test t1(i_intf);
  
  fulladder f (
    .a(i_intf.a),
    .b(i_intf.b),
    .cin(i_intf.cin),
    .sum(i_intf.sum),
    .cout(i_intf.cout)
   );
  
 /* initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end*/
  
  
endmodule 
