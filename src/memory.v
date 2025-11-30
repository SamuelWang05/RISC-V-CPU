module Memory (
    input clk;
    input [31:0] address;
    input [31:0] write_data;
    input write_enable;
    input reset;

    output reg [31:0] read_data;
);

parameter NUM_WORDS = 64;

// byte-addressed memory 
reg [31:0] memory [NUM_WORDS - 1:0];

always @ (posedge clk) begin
    // reset logic
    if(reset == 1'b0) begin
       for(i = 0; i < NUM_WORDS - 1; i = i + 1) begin
            memory[i] <= 32'b0;
       end 
    end

    // write logic
    if(write_enable) begin
        memory <= write_data;
    end
end



endmodule