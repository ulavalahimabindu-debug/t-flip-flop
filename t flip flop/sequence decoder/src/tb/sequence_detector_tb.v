`timescale 1ns/1ps

module sequence_detector_tb;

    reg clk;
    reg reset;
    reg data_in;

    wire detected;

    // Instantiate Sequence Detector
    sequence_detector uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .detected(detected)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Task to send one input bit
    task send_bit;
        input bit_value;
        begin
            data_in = bit_value;
            #10;

            $display("%0t\t%b\t\t%b",
                     $time, data_in, detected);
        end
    endtask

    initial begin

        clk     = 1'b0;
        reset   = 1'b1;
        data_in = 1'b0;

        $display("======================================");
        $display("       1011 SEQUENCE DETECTOR");
        $display("======================================");
        $display("Time\tData_In\t\tDetected");
        $display("--------------------------------------");

        // Reset
        #10;
        reset = 1'b0;

        // Input sequence: 1011011
        send_bit(1);
        send_bit(0);
        send_bit(1);
        send_bit(1);

        send_bit(0);
        send_bit(1);
        send_bit(1);

        $display("--------------------------------------");
        $display("Expected: Sequence 1011 detected twice");
        $display("======================================");
        $display("       SIMULATION COMPLETED");
        $display("======================================");

        $finish;
    end

endmodule