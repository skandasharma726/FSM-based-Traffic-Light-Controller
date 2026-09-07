module traffic_tb;
wire [2:0] light;
reg clk;

rgy uut(.light(light),.clk(clk));

always #5 clk=~clk;

initial begin
$monitor("Time:%0t,   light:%b", $time,light);
$dumpfile("rgy.vcd");
$dumpvars(0,rgyt);
clk=0;
#100;$finish;
end
endmodule
