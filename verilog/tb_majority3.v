`timescale 1ns/1ps

module tb_majority_cmos();

    logic   a;
    logic   b;
    logic   cin;
    logic   y;

    majority_cmos dut (
        .a(a),
        .b(b),
        .cin(cin),
        .y(y)
    );

    initial begin
        $dumpfile("sim/majority_cmos_ondas.vcd");
        $dumpvars(0, tb_majority_cmos);
    
        
        $monitor("Tempo: %0t ns | A: %b, B: %b, Cin: %b || Y (Cout'): %b", 
                 $time, a, b, cin, y);

        // Linha 1
        a = 0; b = 0; cin = 0; 
        #10;          
        
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

        $display("Simulação concluída com sucesso.");
        $finish;
    end

endmodule