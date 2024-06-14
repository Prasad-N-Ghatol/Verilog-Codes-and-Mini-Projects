/*
Verilog Code, to implement a 1:8 DEMUX.



Author : Prasad Narayan Ghatol
*/



module DEMUX_1_8 (
    input        Enable_In,

    input        Data_In,
    
    input  [2:0] Select_In,
    
    output       Data_0_Out,
    output       Data_1_Out,
    output       Data_2_Out,
    output       Data_3_Out,
    output       Data_4_Out,
    output       Data_5_Out,
    output       Data_6_Out,
    output       Data_7_Out
);



// --------------------------------------------------
// 1:8 DEMUX Logic
// --------------------------------------------------
assign Data_0_Out = Enable_In ? ((Select_In == 3'h0) ? Data_In : 1'b0) : 1'bZ;
assign Data_1_Out = Enable_In ? ((Select_In == 3'h1) ? Data_In : 1'b0) : 1'bZ;
assign Data_2_Out = Enable_In ? ((Select_In == 3'h2) ? Data_In : 1'b0) : 1'bZ;
assign Data_3_Out = Enable_In ? ((Select_In == 3'h3) ? Data_In : 1'b0) : 1'bZ;
assign Data_4_Out = Enable_In ? ((Select_In == 3'h4) ? Data_In : 1'b0) : 1'bZ;
assign Data_5_Out = Enable_In ? ((Select_In == 3'h5) ? Data_In : 1'b0) : 1'bZ;
assign Data_6_Out = Enable_In ? ((Select_In == 3'h6) ? Data_In : 1'b0) : 1'bZ;
assign Data_7_Out = Enable_In ? ((Select_In == 3'h7) ? Data_In : 1'b0) : 1'bZ;



endmodule