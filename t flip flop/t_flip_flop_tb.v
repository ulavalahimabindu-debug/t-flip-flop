```verilog
// Testbench for T Flip-Flop

module T_Flip_Flop_tb;

reg T;
reg CLK;

wire Q;
wire Q_bar;

T_Flip_Flop uut (
    .T(T),
    .CLK(CLK),
    .Q(Q),
    .Q_bar(Q_bar)
);

// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin

    $display("Time  CLK  T  Q  Q_bar");
    $display("-----------------------");

    // T = 0 : No Change
    T = 0;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, T, Q, Q_bar);

    // T = 1 : Toggle
    T = 1;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, T, Q, Q_bar);

    // T = 1 : Toggle Again
    T = 1;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, T, Q, Q_bar);

    // T = 0 : No Change
    T = 0;

    #10;
    $display("%4t   %b    %b  %b    %b",
             $time, CLK, T, Q, Q_bar);

    $finish;

end

endmodule
```
