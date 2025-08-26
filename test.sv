reg clock,reset;
reg x_in;
wire y_out;
Moore_Model um(y_out,x_in,clock,reset);
 initial
 $monitor($time," reset=%b , x_in=%b , y_out=%b ",reset,x_in,y_out);
 initial
 begin
 clock = 0;
 forever #25 clock = ~clock;
 end
 initial
 begin
 reset = 0;
 #5 reset=1;
 //010111110111100
#5x_in=0;
 #5x_in=1;
 #5x_in=0;
 #5x_in=1;
 #5x_in=1;
 #5x_in=1;
 #5x_in=1;
 #5 x_in=1;
 #5 x_in=0;
 #5x_in=1;
 #5x_in=1;
 #5x_in=1;
 #5x_in=1; #5x_in=0;
 //0100111
 #5reset=1;
 #10x_in=0;
 #10x_in=1; #10x_in=0;
 #10x_in=0; #10x_in=1;
 #10x_in=1; #10x_in=1;

 end
 initial
 #400 $finish;
