module shift_left(a,b,s);
   input logic [3:0] a;
   input logic [3:0] b;

   output logic [3:0] s;
 
   wire logic [3:0] s1, s2, s3;

   
   mux2by1_4bit mux1(a,   {a[2:0],1'b0},  b[0], s1);
   mux2by1_4bit mux2(s1,  {s1[1:0],2'b0}, b[1], s2);
   mux2by1_4bit mux4(s2,  4'b0, b[2],  s3);
   mux2by1_4bit mux8(s3,  4'b0, b[3],  s);
endmodule
