`timescale 1ns/1ps

module tb_mirror_adder();

logic   a;
logic   b;
logic   cin;
logic   sum;
logic   cout;

mirror_adder_cmos dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
$dumpfile("sim/mirror_adder_ondas.vcd");
        $dumpvars(0, tb_mirror_adder);
   
          // Linha 1
        a = 0; b = 0; cin = 0; 
        #10; 
        
$monitor("Tempo: %0t ns | A: %b, B: %b, Cin: %b || Sum: %b, Cout: %b", 
         $time, a, b, cin, sum, cout);
        
        // Linha 2
        a = 0; b = 0; cin = 1; 
        #10;
        
        // Linha 3
        a = 0; b = 1; cin = 0; 
        #10;
        
        // Linha 4
        a = 0; b = 1; cin = 1; 
        #10;
        
        // Linha 5
        a = 1; b = 0; cin = 0; 
        #10;
        
        // Linha 6
        a = 1; b = 0; cin = 1; 
        #10;
        
        // Linha 7
        a = 1; b = 1; cin = 0; 
        #10;
        
        // Linha 8
        a = 1; b = 1; cin = 1; 
        #10;

        // Finaliza a simulação após o último teste
        $display("Simulação concluída com sucesso.");
        $finish;
    end

endmodule