module SHIFTER_RIGHT(
    input  [7:0] data_in,        // Dữ liệu đầu vào 5 bit
    output [7:0] data_out        // Dữ liệu đầu ra 5 bit
);

    reg [7:0] result;

    always @(*) begin
            result = data_in >>1; // Dịch PHAI 
    end
    assign data_out = result;
endmodule