`timescale 1ns / 1ps

`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  generator 	gen;
  driver    	driv;
  monitor   	mon;
  scoreboard	scb;
  mailbox #(transaction) m1;
  mailbox #(transaction) m2;

  virtual intf vif;
  function new(virtual intf vif);
    this.vif = vif;
    m1   = new();
    m2   = new();
    gen  = new(m1);
    driv = new(vif,m1);
    mon  = new(vif,m2);
    scb  = new(m2);
  endfunction
  
  task test();
    fork 
      gen.main();
      driv.main();
      mon.main();
      scb.main();
    join
  endtask

  
  task run;
    test();
    $finish;
  endtask
  
endclass
