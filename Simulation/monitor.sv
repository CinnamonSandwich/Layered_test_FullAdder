`timescale 1ns / 1ps

class monitor;
  
  virtual intf vif;
  mailbox #(transaction) mon_scb;
  
  function new(virtual intf vif,mailbox #(transaction) mon_scb);
    this.vif     = vif;
    this.mon_scb = mon_scb;
  endfunction
  
  task main;
    repeat(1)
      #3;
      begin
      transaction trans;
      trans = new();
      trans.a       = vif.a;
      trans.b       = vif.b;
      trans.cin		= vif.cin;
      trans.sum     = vif.sum;
      trans.cout   = vif.cout;
      mon_scb.put(trans);
      trans.display("Monitor");
    end
  endtask
  
endclass
