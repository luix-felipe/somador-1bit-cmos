`timescale 1ns/1ps

module aoi21_cmos(
    input logic     a,
    input logic     b,
    input logic     cin,

    output logic    out1
);

assign out1 = ~(a & b | cin);

endmodule