module sequence_detector (
    input  wire clk,
    input  wire reset,
    input  wire data_in,
    output reg  detected
);

    // FSM states
    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;

    reg [2:0] state;
    reg [2:0] next_state;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next-state logic
    always @(*) begin
        case (state)

            // No bits matched
            S0: begin
                if (data_in)
                    next_state = S1;
                else
                    next_state = S0;
            end

            // Matched "1"
            S1: begin
                if (data_in)
                    next_state = S1;
                else
                    next_state = S2;
            end

            // Matched "10"
            S2: begin
                if (data_in)
                    next_state = S3;
                else
                    next_state = S0;
            end

            // Matched "101"
            S3: begin
                if (data_in)
                    next_state = S4;
                else
                    next_state = S2;
            end

            // Matched "1011"
            S4: begin
                if (data_in)
                    next_state = S1;
                else
                    next_state = S2;
            end

            default: begin
                next_state = S0;
            end

        endcase
    end

    // Output logic
    always @(*) begin
        if (state == S4)
            detected = 1'b1;
        else
            detected = 1'b0;
    end

endmodule