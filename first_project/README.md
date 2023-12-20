# Light
## Light code

'''verilog

    module Light (x1, x2, f);
        input x1, x2;
        output f;
        assign f = (x1 & ~x2)|(~x1 & x2);
    endmodule

'''

<img src="./light.png" alt="Схема тиратрона" width="600" />

<img src="./light_compile.png" alt="Схема тиратрона" width="600" />