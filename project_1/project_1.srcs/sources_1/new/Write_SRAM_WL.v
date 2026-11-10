module Write_SRAM_WL(
    input  wire        CLK,               // Global Clock 
    input  wire        EN,                // start trigger - active low
    output reg         done,              // FSM complete
    
    // Write PADS required
    output reg         WEN,
    output reg         WL_EN
);

    
    // FSM states
    parameter IDLE            = 3'd0;
    parameter WEN_ON     = 3'd1;
    parameter WL_EN_ON        = 3'd2;
    parameter WL_EN_OFF       = 3'd3;
    parameter WEN_OFF    = 3'd4;
    parameter FINISH          = 3'd5;

    reg [2:0] state;

    // FSM sequential logic
    always @(posedge CLK) begin
    
        if(!EN)begin
            // Defaults
            WEN  <= 0;
            WL_EN     <= 0;
            done      <= 0;
            state <= IDLE;
        end
        else begin
            //Delay Handler
            case (state)
                IDLE: begin
                    state <= WEN_ON; // No waiting
                end

                WEN_ON: begin
                    WEN <= 1;
                    state     <= WL_EN_ON;
                end
    
                WL_EN_ON: begin
                    WEN <= 1;
                    WL_EN    <= 1;
                    state     <= WL_EN_OFF;
                end
    
                WL_EN_OFF: begin
                    WEN <= 1;
                    WL_EN    <= 0;
                    state     <= WEN_OFF;
                end
    
                WEN_OFF: begin
                    WEN <= 0;
                    WL_EN    <= 0;
                    state     <= FINISH;
                end
    
                FINISH: begin
                    done <= 1;
                    WEN  <= 0;
                    WL_EN     <= 0;
                end
                default: state <= IDLE;
            endcase
        end
    end
endmodule
