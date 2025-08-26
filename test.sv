module fulladder(s,a,b,cin,cout);
output cout,s;
input a,b,cin;
wire w1,w2,w3;
xor #10 (s,a,b,cin);
and #10 (w1,b,cin);
and #10 (w2,a,b);
and #10 (w3,a,cin);
or #10 (cout,w1,w2,w3);
endmodule
module serialadder(SUM,A,B,CIN,COUT);
output COUT;
output [5:0]SUM;
input CIN;
input [5:0] A,B;
wire C0,C1,C2,C3,C4;
fulladder fa0(SUM[0],A[0],B[0],CIN,C0);
fulladder fa1(SUM[1],A[1],B[1],C0,C1);
fulladder fa2(SUM[2],A[2],B[2],C1,C2);
fulladder fa3(SUM[3],A[3],B[3],C2,C3);
fulladder fa4(SUM[4],A[4],B[4],C3,C4);
fulladder fa5(SUM[5],A[5],B[5],C4,COUT);
endmodule