module top_level(
	input wire [15:0]sw,
	output logic [15:0]led
    );
    
    four_sixteen_bd decoder (.a(sw[3:0]), .bcode(led[15:0]));
    
endmodule
