`timescale 1ns/1ps  

module clock_divider_tb;
   reg clk;
   reg reset;
   reg [1:0] div;
   wire div_clk;

   clock_divider dut (
       .clk(clk),
       .reset(reset),
       .div(div),
       .div_clk(div_clk)
   );

   // 50MHz clock (20ns period)
   initial begin
       clk = 0;
   end
   always #10 clk = ~clk;  // Toggle every 10ns
  
  // Test stimulus
   initial begin
       // Initial reset
       reset = 1;
       div = 2'b00;
       #100;
       
     
	  // Test each frequency 
       reset = 0;
       div = 2'b00;  // 100Hz
       #10000000;
       
       div = 2'b01;  // 1KHz
       #1000000;
       
       div = 2'b10;  // 10KHz
       #1000000;
       
       div = 2'b11;  // 100KHz
       #1000000;
       
       // Reset during operation
       reset = 1;
       #10000;
       
       $finish;
   end

endmodule