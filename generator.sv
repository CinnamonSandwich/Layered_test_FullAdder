`timescale 1ns / 1ps

class generator;
  
  transaction trans; 
  
  
  mailbox #(transaction) gen_driv; 
  

  
  function new(mailbox #(transaction) gen_driv);  
    this.gen_driv = gen_driv;
  endfunction
  
  
  task main();
    
    repeat(1)
      begin
    	trans = new();
        trans.randomize();
        trans.display("Generator");
      	gen_driv.put(trans);
      end
  
  endtask
  
endclass