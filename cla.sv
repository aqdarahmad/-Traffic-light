module Trafficlight(clk,redlight,oralight,grelight);
output reg redlight,oralight,grelight;
input clk;
parameter redtime=9,orangetime=3,grellowtime=12;
reg [3:0]state;
reg [5:0]count;
parameter s0=4'b0000,s1=4'b0001,s2=4'b0010;
always@(posedge clk)
count<=count+1;
always@(posedge clk)
case(state)
s0: if(count==9) redlight<=1'b1;
else
begin
grelight<=1'b0;oralight<=1'b0;
count<=0;
state<=s1;
end
s1 : if(count==3) oralight<=1'b1;
else
begin
redlight<=1'b0;grelight<=1'b0;
count<=1'b0;
state<=s2;
end
s2 : if(count==12) grelight<=1'b1;
else
begin
redlight<=1'b0;oralight<=1'b0;
count<=1'b0;
state<=s0;
end
default: state <=s0;
endcase
endmodule
