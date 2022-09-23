module two_four_bd(
	input logic [1:0] a, logic en,
	output logic [3:0] bcode
    );
    
    assign bcode[0] = (~a[1] & ~a[0]) & en;
    assign bcode[1] = (~a[1] &  a[0]) & en;
    assign bcode[2] = ( a[1] & ~a[0]) & en;
    assign bcode[3] = ( a[1] &  a[0]) & en;
endmodule
