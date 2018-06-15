module trab0(
	input [5:0] SW,
	input [1:0] KEY,
	input CLOCK_50,

	output reg [7:0] HEX0,
	output reg [7:0] HEX1,
	output reg [7:0] HEX2,
	output reg [7:0] HEX3
);

	always @(posedge CLOCK_50) begin
	
	case (SW)
		6'b001111 : HEX3 <= ~7'b0001000;
		default   : HEX3 <= 7'b1111111;
	endcase
	
	end

endmodule
