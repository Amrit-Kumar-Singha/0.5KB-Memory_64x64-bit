`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 02:16:38
// Design Name: 
// Module Name: tb_sram_64bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module tb_sram_64bit;

    // Inputs
    reg clk;
    reg we;
    reg [5:0] addr;
    reg [63:0] din;

    // Outputs
    wire [63:0] dout;

    // Instantiate the SRAM module
    sram_64bit uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize inputs
        we = 0;
        addr = 0;
        din = 0;

        // Apply test vectors
        #10;
        we = 1; addr = 6'b000001; din = 64'hA5A5A5A5A5A5A5A5;
        #10;
        we = 0; addr = 6'b000001;
        #10;
        we = 1; addr = 6'b000010; din = 64'h5A5A5A5A5A5A5A5A;
        #10;
        we = 0; addr = 6'b000010;
        #10;
        we = 1; addr = 6'b000011; din = 64'hFFFFFFFFFFFFFFFF;
        #10;
        we = 0; addr = 6'b000011;
        #10;
        $finish;
    end

endmodule

