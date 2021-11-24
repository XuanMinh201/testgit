module counter(
input wire clk, e, rst,
output reg [7:0] out 
);

always @(posedge clk)
if (rst) begin
  out <= 8'b0 ;
end 
else if (e) begin
  out <= out + 1;
end
endmodule 