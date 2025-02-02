module clock_divider(
    input clk,           
    input reset,         
    input [1:0] div,     
    output reg div_clk   
);

reg[31:0] counter;
reg[31:0] max_count;

always@(*)begin
 case(div)
 2'b00: max_count = 32'd250_000;// 50MHz/(100Hz*2)
 2'b01: max_count = 32'd25_000; // 50MHz/(1kHz*2)
 2'b10: max_count = 32'd2_500;  // 50MHz/(10kHz*2)
 2'b11: max_count = 32'd250;    // 50MHz/(100kHz*2) 
endcase
end

always@(posedge clk or posedge reset)begin
		if(reset)begin
			counter <= 32'd0;
			div_clk <= 1'b0;
		end
		else if(counter >= max_count-1)begin
			counter <= 32'd0;
			div_clk <= ~div_clk;
		end	
		else begin
			counter <= counter+1;
		end	
end
endmodule			
			
			