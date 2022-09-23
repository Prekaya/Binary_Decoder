module four_sixteen_bd(
	input logic [3:0] a,
	output logic [15:0] bcode
    );
    
    logic [3:0] two_four_bcode_0, two_four_bcode_1, two_four_bcode_2, two_four_bcode_3;
    
    two_four_bd tf_bd_0 (.a(a[1:0]), .en( a[2]& a[3]), .bcode(two_four_bcode_0));
    two_four_bd tf_bd_1 (.a(a[1:0]), .en(~a[2]& a[3]), .bcode(two_four_bcode_1));
    two_four_bd tf_bd_2 (.a(a[1:0]), .en( a[2]&~a[3]), .bcode(two_four_bcode_2));
    two_four_bd tf_bd_3 (.a(a[1:0]), .en(~a[2]&~a[3]), .bcode(two_four_bcode_3));
    
    assign bcode = {two_four_bcode_3, two_four_bcode_2, two_four_bcode_1, two_four_bcode_0};
endmodule
