module three_eight_bd(
	input logic [2:0] a,
	output logic [7:0] bcode
    );
    
    logic [3:0] two_four_bcode_0;
    logic [3:0] two_four_bcode_1;
    
    two_four_bd tf_bd_0 (.a(a[1:0]), .en(a[2]), .bcode(two_four_bcode_0));
    two_four_bd tf_bd_1 (.a(a[1:0]), .en(~a[2]), .bcode(two_four_bcode_1));
    
    assign bcode = {two_four_bcode_1, two_four_bcode_0};
endmodule
