`include "array_multiplier.v"
// array multiplier test bench
module array_multiplier_tb;
    reg [4:0] x, y;
    wire [9:0] product;

    array_multiplier DUT(.x(x), .y(y), .product(product));
    initial begin
        $dumpfile("array_multiplier.vcd");
        $dumpvars(0,array_multiplier_tb);
        $monitor($time , " x = %d y = %d prdt = %d" , x, y, product);

        #5
        x = 5'b11111;// 31
        y = 5'b11011;//27

        #5
        x = 5'b11111;//31
        y = 5'b11111;//31
        #5 $finish;
    end

endmodule