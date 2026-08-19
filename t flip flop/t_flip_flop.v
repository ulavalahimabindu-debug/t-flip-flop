```verilog
// T Flip-Flop using Verilog

module T_Flip_Flop (
    input T,
    input CLK,
    output reg Q,
    output Q_bar
);

assign Q_bar = ~Q;

always @(posedge CLK) begin
    if (T == 1'b0)
        Q <= Q;       // No Change
    else
        Q <= ~Q;      // Toggle
end

endmodule
```
