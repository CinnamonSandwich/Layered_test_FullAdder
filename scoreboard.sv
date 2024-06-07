`timescale 1ns / 1ps

class scoreboard;
  
  mailbox #(transaction) mon_scb;
  
  
  
  function new(mailbox #(transaction) mon_scb);
    this.mon_scb = mon_scb;
  endfunction
  
  task main;
    transaction trans;
    repeat(1)
      begin
      mon_scb.get(trans);
        
        if(((trans.a ^ trans.b ^ trans.cin) == trans.sum)  && ((trans.cin &(trans.a ^ trans.b) | (trans.a & trans.b)) == trans.cout))
          $display("Result is as Expected");
        else
          $error("Wrong Result");
           
         trans.display("Scoreboard");
    end
  endtask
  
endclass