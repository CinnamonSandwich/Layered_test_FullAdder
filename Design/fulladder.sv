`timescale 1ns / 1ps

module fulladder(input bit a,b,cin ,output bit sum,cout);
 
  assign sum = a^b^cin;
  assign cout = cin&(a^b) | &b;
  
endmodule
  
