`timescale 1ns/1ps

module inversor_cmos(
    input logic     in1,
    output logic    out1
);    

assign out1 = ~in1;

endmodule