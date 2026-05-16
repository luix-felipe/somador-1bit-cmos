`timescale 1ns/1ps

module majority_cmos(
    input logic     a,
    input logic     b,
    input logic     cin,

    output logic    y
);

assign y = ~((a & b) | (a & cin) | (b & cin));

endmodule