module top_level_tb();
  	logic [15:0] eq;
  	logic clk;
  	logic [3:0] a;
	
	initial begin
		clk = 0;
    	a = 16'b0;
  	end
    
    // clk has 50% duty cycle, 10ns period
    always #5 clk = ~clk;
    top_level decoder (.sw(a), .led(eq));
  
  	always @(posedge clk) begin
    	a <= a + 1;
  	end
endmodule