/*
SystemVerilog Testbench for the 1:4 DEMUX.



Author : Prasad Narayan Ghatol
*/
`timescale 1ns/1ps



module DEMUX_1_4_tb ();



reg        Enable_In;

reg        Data_In;

reg  [1:0] Select_In;

wire       Data_0_Out;
wire       Data_1_Out;
wire       Data_2_Out;
wire       Data_3_Out;



// --------------------------------------------------
// 1:4 DEMUX DUT Instantiation
// --------------------------------------------------
DEMUX_1_4 DUT (
    .Enable_In(Enable_In),

    .Data_In(Data_In),

    .Select_In(Select_In),

    .Data_0_Out(Data_0_Out),
    .Data_1_Out(Data_1_Out),
    .Data_2_Out(Data_2_Out),
    .Data_3_Out(Data_3_Out)
);



// --------------------------------------------------
// Testbench Logic
// --------------------------------------------------
initial
    begin
        Enable_In = 1'b0;
        #10;
        Enable_In = 1'b1;

        repeat(20)
            begin
                Data_In = $random;

                Select_In = $random;
                #10;
            end

        $stop;
    end



endmodule