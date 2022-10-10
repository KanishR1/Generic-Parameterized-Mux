module tb_Nx1_mux;

reg [7:0]D;
reg [2:0]S;
wire Y;

Nx1_mux #(.N(8)) DUT(.D(D), .S(S), .Y(Y));

task initialize;
begin
    D=8'b0000;
    S=4'b00;
end
endtask

task select(input [2:0]i);
begin
    S=i;
end
endtask

task load(input [7:0] data);
begin
    D=data;
end
endtask

integer i , j;
initial begin
$dumpfile ("Nx1_mux.vcd");
$dumpvars (0, tb_Nx1_mux);
for (i=0; i<8 ; i=i+1)
begin
    initialize;
    #10;
    select(i);
    for(j=0;j<256;j=j+1)
    begin
        load(j);
        #10;
    end
end
$finish;
end
initial $monitor("D = %b, S = %b, Y = %b",D,S,Y);

endmodule