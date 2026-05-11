`timescale 1ns/1ps

module mirror_adder_cmos(
    input logic     a,
    input logic     b,
    input logic     cin,

    output logic    sum,
    output logic    cout
);

logic cout_bar;
logic sum_bar;

assign cout_bar = ~((a & b) | (cin & (a | b)) );
assign sum_bar = ~((a & b & cin) | (cout_bar & (a | b | cin)) );

inversor_cmos inversor_cout(
    .in1(cout_bar),
    .out1(cout)
);

inversor_cmos inversor_sum (
        .in1(sum_bar),
        .out1(sum)
    );

endmodule