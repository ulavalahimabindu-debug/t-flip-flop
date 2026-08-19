```verilog
// Testbench for JK Flip-Flop

module JK_Flip_Flop_tb;

reg J;
reg K;
reg CLK;

wire Q;
wire Q_bar;

JK_Flip_Flop uut (
    .J(J),
    .K(K),
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

    $display("Time  CLK  J  K  Q  Q_bar");
    $display("----------------------------");

    // No Change
    J = 0;
    K = 0;

    #10;
    $display("%4t   %b    %b  %b  %b    %b",
             $time, CLK, J, K, Q, Q_bar);

    // SET
    J = 1;
    K = 0;

    #10;
    $display("%4t   %b    %b  %b  %b    %b",
             $time, CLK, J, K, Q, Q_bar);

    // No Change
    J = 0;
    K = 0;

    #10;
    $display("%4t   %b    %b  %b  %b    %b",
             $time, CLK, J, K, Q, Q_bar);

    // RESET
    J = 0;
    K = 1;

    #10;
    $display("%4t   %b    %b  %b  %b    %b",
             $time, CLK, J, K, Q, Q_bar);

    // TOGGLE
    J = 1;
    K = 1;

    #10;
    $display("%4t   %b    %b  %b  %b    %b",
             $time, CLK, J, K, Q, Q_bar);

    // TOGGLE again
    J = 1;
    K = 1;

    #10;
    $display("%4t   %b    %b  %b  %b    %b",
             $time, CLK, J, K, Q, Q_bar);

    $finish;

end

endmodule
```
