module shift_reg_4bit (
    input       clock,
    input       reset,      // active-high reset
    input       din,        // serial input bit
    output reg [3:0] q      // shift register output
);

always @(posedge clock or posedge reset) begin
    if (reset) begin
        q <= 4'b0000;
    end else begin
        // Shift right
        q[3] <= q[2];
        q[2] <= q[1];
        q[1] <= q[0];
        q[0] <= din;   // new incoming bit
    end
end

endmodule

