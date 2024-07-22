`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 02:15:14
// Design Name: 
// Module Name: sram_64bit
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


module sram_64bit (
    input wire clk,
    input wire we,               // Write enable
    input wire [5:0] addr,       // 6-bit address (64 locations)
    input wire [63:0] din,       // Data input (64-bit)
    output reg [63:0] dout       // Data output (64-bit)
);

    // Declare the memory array
    reg [63:0] mem [0:63];       // 64 locations of 64-bit memory

    // Write operation
    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;    // Write data to memory
        end
    end

    // Read operation
    always @(posedge clk) begin
        if (!we) begin
            dout <= mem[addr];   // Read data from memory
        end
    end

endmodule

