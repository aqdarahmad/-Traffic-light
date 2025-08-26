module Moore_Model ( y_out, x_in, clock,
reset);
output y_out;
input x_in;
input clock, reset;
reg [2: 0] state;
parameter S0 = 2'b000, S1 = 2'b001, S2 =
b010, S3 = 2'b011,S4=3'b100, S5=3'b101;'2
always @ ( posedge clock, negedge reset)
if (reset == 0) state <= S0;
else
case (state)
S0: if (x_in) state <= S1; else state <= S0;
S1: if (x_in) state <= S2; else state <= S0;
S2: if (x_in) state <= S3; else state <= S0;
S3: if (x_in) state <= S4; else state <= S0;
S4: if (x_in) state <= S5; else state <= S0;
S5: if (x_in) state <= S5; else state <= S0;
endcase
assign y_out = (state == S5);
endmodule