`timescale 1ns / 1ps

class transaction;


 
  rand bit a;  
  rand bit b;
  rand bit cin;
  
  
  bit sum;
  bit cout;


  function void display(string name);

    $display(" %s ",name);

    $display("a = %0d,   b = %0d,  cin = %0d",a,b,cin);
    
    $display("sum = %0d, cout = %0d",sum,cout);

  endfunction
  
  
endclass 
