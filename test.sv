module test;

reg redlight,oralight,grelight;
reg clk;

Trafficlight t(clk,redlight,oralight,grelight );
initial
monitor($time," redlight=%b , $
oralight=%b, grelight=%b
",redlight,oralight,grelight);

initial
begin
clk = 0;
forever #1 clk = ~clk;
end
initial
finish;$60#
endmodule
