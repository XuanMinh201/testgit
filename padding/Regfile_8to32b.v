module Regfile_8to32b(
	input wire clk,
	input wire [7:0] data,addr_wr,
	input wire [4:0] addr_rd,
	output wire [31:0] data_rd
);
reg [7:0] Reg [0:127];

assign data_rd = addr_rd == 0 ? {Reg[0], Reg[1], Reg[2], Reg[3]} : 
				 addr_rd == 1 ? {Reg[4], Reg[5], Reg[6], Reg[7]} : 
				 addr_rd == 2 ? {Reg[8], Reg[9], Reg[10], Reg[11]} :
				 addr_rd == 3 ? {Reg[12], Reg[13], Reg[4], Reg[15]} :
				 addr_rd == 4 ? {Reg[16], Reg[17], Reg[18], Reg[19]} :
				 addr_rd == 5 ? {Reg[20], Reg[21], Reg[22], Reg[23]} :
				 addr_rd == 6 ? {Reg[24], Reg[25], Reg[26], Reg[27]} :
				 addr_rd == 7 ? {Reg[28], Reg[29], Reg[30], Reg[31]} :
				 addr_rd == 8 ? {Reg[32], Reg[33], Reg[34], Reg[35]} :
				 addr_rd == 9 ? {Reg[36], Reg[37], Reg[38], Reg[39]} :
				 addr_rd == 10 ? {Reg[40], Reg[41], Reg[42], Reg[43]} :
				 addr_rd == 11 ? {Reg[44], Reg[45], Reg[46], Reg[47]} :
				 addr_rd == 12 ? {Reg[48], Reg[49], Reg[50], Reg[51]} :
				 addr_rd == 13 ? {Reg[52], Reg[53], Reg[54], Reg[55]} :
				 addr_rd == 14 ? {Reg[56], Reg[57], Reg[58], Reg[59]} :
				 addr_rd == 15 ? {Reg[60], Reg[61], Reg[62], Reg[63]} :
				 addr_rd == 16 ? {Reg[64], Reg[65], Reg[66], Reg[67]} :
				 addr_rd == 17 ? {Reg[68], Reg[69], Reg[70], Reg[71]} :
				 addr_rd == 18 ? {Reg[72], Reg[73], Reg[74], Reg[75]} :
				 addr_rd == 19 ? {Reg[76], Reg[77], Reg[78], Reg[79]} :
				 addr_rd == 20 ? {Reg[80], Reg[81], Reg[82], Reg[83]} :
				 addr_rd == 21 ? {Reg[84], Reg[85], Reg[86], Reg[87]} :
				 addr_rd == 22 ? {Reg[88], Reg[89], Reg[90], Reg[91]} :
				 addr_rd == 23 ? {Reg[92], Reg[93], Reg[94], Reg[95]} :
				 addr_rd == 24 ? {Reg[96], Reg[97], Reg[98], Reg[99]} :
				 addr_rd == 25 ? {Reg[100], Reg[101], Reg[102], Reg[103]} :
				 addr_rd == 26 ? {Reg[104], Reg[105], Reg[106], Reg[107]} :
				 addr_rd == 27 ? {Reg[108], Reg[109], Reg[110], Reg[111]} :
				 addr_rd == 28 ? {Reg[112], Reg[113], Reg[114], Reg[115]} :
				 addr_rd == 29 ? {Reg[116], Reg[117], Reg[118], Reg[119]} :
				 addr_rd == 30 ? {Reg[120], Reg[121], Reg[122], Reg[123]} :
				 addr_rd == 31 ? {Reg[124], Reg[125], Reg[126], Reg[127]} : 0;
always @(posedge clk) begin
   Reg[addr_wr] <= data;
end 

endmodule