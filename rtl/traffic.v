module rgy(
output reg [2:0] light,
input clk );

parameter red=3'b000, green=3'b010, yellow=3'b100;
parameter s0=0, s1=1, s2=2;

reg [1:0] state; 

always @(posedge clk)
begin
case (state)
s0 : state<=s1;
s1 : state<=s2;
s2 : state<=s0;
default : state<=s0;
endcase
end

always @(state)
begin
case(state)
s0 : light=red;
s1 : light=green;
s2 : light=yellow;
default : light=red;
endcase
end

endmodule
