module led_blink (
    input wire clk,
    output reg led = 1'b0
);

    reg [23:0] contador = 24'd0;

    always @(posedge clk) begin
        if (contador == 24'd13_499_999) begin
            contador <= 24'd0;
            led <= ~led;
        end
        else begin
            contador <= contador + 1'b1;
        end
    end

endmodule