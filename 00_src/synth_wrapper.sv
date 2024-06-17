module synth_wrapper
(
 input logic [3:0] a, b,
 input logic [2:0] op,
 input logic rst_n,clk,
 

 output logic [3:0] result,
 output logic carry
);
  logic [3:0] a_reg;
  logic [3:0] b_reg;
  logic [2:0] op_reg;
  logic [3:0] result_reg;
  logic  carry_reg;

 always@(posedge clk, negedge rst_n) begin
    if(!rst_n) begin
       a_reg <= 4'h0;
       b_reg <= 4'h0;
       op_reg <= 3'h0;
       result <= 4'h0;
       carry <= 1'b0;
    end
    else begin
       a_reg <= a;
       b_reg <= b;
       op_reg <= op;
       result <= result_reg;
       carry <= carry_reg;
    end
 end

 alu u1(
    .a(a_reg),
    .b(b_reg), 
    .op(op_reg),
    .result(result_reg),
    .carry(carry_reg)
);

endmodule
