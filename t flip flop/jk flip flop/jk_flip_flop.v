```verilog
// JK Flip-Flop using Verilog

module JK_Flip_Flop (
    input J,
    input K,
    input CLK,
    output reg Q,
    output Q_bar
);

assign Q_bar = ~Q;

always @(posedge CLK) begin
    case ({J, K})

        2'b00: Q <= Q;       // No Change
        2'b01: Q <= 1'b0;   // Reset
        2'b10: Q <= 1'b1;   // Set
        2'b11: Q <= ~Q;     // Toggle

    endcase
end

endmodule
```
