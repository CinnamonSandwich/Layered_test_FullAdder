`timescale 1ns / 1ps

class driver;
  
  virtual intf vif;
  
  mailbox #(transaction) gen2driv ;
  
  function new(virtual intf vif,mailbox #(transaction) gen2driv); 
    this.vif = vif;
    this.gen2driv = gen2driv;
  endfunction
  
  task main;
    
    repeat(1) 
      begin
       transaction trans;
      
        gen2driv.get(trans);
       
        vif.a     <= trans.a;
        vif.b     <= trans.b;
        vif.cin	  <= trans.cin;	
      
        
        trans.sum     = vif.sum;
        trans.cout   = vif.cout;      
        trans.display("Driver");
        
    end
  endtask
  
endclass