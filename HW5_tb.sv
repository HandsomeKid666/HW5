`timescale 1ns/1ps
module HW5_tb;
reg clk;
reg set;
wire [3:1] o;
parameter OFFSET = 0;
  
initial
begin
  #OFFSET;
  forever
  begin
    clk = 1'b0;
    #2 clk = 1'b1;
    #2;
  end
end

initial
begin
  #OFFSET;
  forever
  begin
    set= 1'b1;
    #5   set = 1'b0;
    #50;
  end
end

initial begin
  #60 $finish;
end

initial
begin
	$dumpfile("HW5.vcd");
	$dumpvars(0, HW5_tb);
end
HW5 HW5_tb(.clk, .set, .o);
endmodule