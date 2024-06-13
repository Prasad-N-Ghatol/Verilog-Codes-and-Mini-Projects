/*
SystemVerilog Testbench for the Parallel-In-Parallel-Out - PIPO - 8-Bit Shift Register.



Author : Prasad Narayan Ghatol
*/
`timescale 1ns/1ps



module Parallel_In_Parallel_Out_PIPO_8_Bit_tb ();



reg        Clk_In;
reg        Reset_In;

reg  [7:0] Parallel_Data_In;
wire [7:0] Parallel_Data_Out;



// --------------------------------------------------
// Parallel-In-Parallel-Out - PIPO - 8-Bit Shift Register DUT Instantiation
// --------------------------------------------------
Parallel_In_Parallel_Out_PIPO_8_Bit DUT (
    .Clk_In(Clk_In),
    .Reset_In(Reset_In),
    .Parallel_Data_In(Parallel_Data_In),
    .Parallel_Data_Out(Parallel_Data_Out)
);



// --------------------------------------------------
// Clock Initialization
// --------------------------------------------------
initial
    begin
        Clk_In = 1'b0;

        forever
            begin
                #5;
                Clk_In = ~Clk_In;
            end
    end



// --------------------------------------------------
// Testbench Logic
// --------------------------------------------------
initial
    begin
        Reset_In = 1'b1;
        #10;
        Reset_In = 1'b0;

        repeat(10)
            begin
                Parallel_Data_In = $random;
                #10;
            end

        $stop;
    end



endmodule