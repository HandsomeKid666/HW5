module HW5(clk, set, o);
input clk;
input set;
output [3:1] o;
reg [3:1] o;
always@ (posedge clk)
 begin
  if (set)begin
    o[3]<=1;
    o[2]<=1;
    o[1]<=0;
  end
  else begin
    o[3]<=o[2];
    o[2]<=o[1];
    o[1]<=o[1]^o[3];
  end
 end
endmodule