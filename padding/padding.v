module padding (
	input wire data_valid, data_len_sel, clk, rst,
	input wire [4:0] addr_rd,
	input wire [7:0] data,
	//output wire padding_done,
	output wire[31:0] padded_message
);
wire [7:0] a, b, c, d, e, count_out;
wire blocks_num;
counter count(.clk(clk),.e(data_valid), .rst(rst), .out(count_out));
comparator comp(.a(54), .b(count_out),.g(blocks_num));
assign a = data_valid == 1 ? data : 8'b10000000; 
assign b = data_len_sel == 1 ? a : count_out;
assign c = data_valid == 1 ? count_out : count_out + 1;
assign d = blocks_num == 1 ? 127 : 63;
assign e = data_len_sel == 1 ? c : e;
Regfile_8to32b RF(.addr_rd(addr_rd), 
					.clk(clk),
					.addr_wr(e),
					.data(b),
					.data_rd(padded_message)
);


endmodule
