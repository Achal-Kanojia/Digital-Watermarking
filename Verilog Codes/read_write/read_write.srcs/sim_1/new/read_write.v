`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 04:32:46 AM
// Design Name: 
// Module Name: read_write
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


module read_write;
    reg [15:0] image [0:64*64-1];
    reg [15:0] watermark [0:64*64-1];
    integer file1,file2;
    integer i;
    
    initial begin
        file1 = $fopen("written_image.txt","a");
        file2 = $fopen("written_watermark.txt","a");
    end
    
    initial begin
        $readmemh("image_data.txt",image);
        $readmemh("watermark_data.txt",watermark);
        
        for (i=0; i<64*64; i=i+1) begin
            $fwrite(file1,"%x\n",image[i]);
            $fwrite(file2,"%x\n",watermark[i]);
        end
    end
endmodule
