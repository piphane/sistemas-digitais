module trab2(

	input [0:3] KEY,
	input [0:9] SW,
	input CLOCK_50,
	output reg [7:0] LEDG
);

reg d;
reg [25:0] s;
reg [25:0] limite;


always @(posedge CLOCK_50) begin

	
	if ( SW[0] == 1) begin
		limite <= 10000000;
	end
	
	else if ( SW[1] == 1) begin
		limite <= 9000000;
	end
	
	else if ( SW[2] == 1) begin
		limite <= 8000000;
	end
	
	else if ( SW[3] == 1) begin
		limite <= 7000000;
	end
	
	else if ( SW[4] == 1) begin
		limite <= 6000000;
	end
	
	else if ( SW[5] == 1) begin
		limite <= 5000000;
	end
	
	else if ( SW[6] == 1) begin
		limite <= 4000000;
	end
	
	else if ( SW[7] == 1) begin
		limite <= 3000000;
	end
	
	else if ( SW[8] == 1) begin
		limite <= 2000000;
	end
	
	else if ( SW[9] == 1) begin
		limite <= 1000000;
	end
		
	else begin
		limite <= 11000000;
	end
	

	if (KEY[0] == 0) begin
		s <= 0;
		d <= 0;
		LEDG <= 1;
	end

	else begin

		if (s == limite) begin
		
			if (d == 0) begin
				LEDG <= LEDG * 2;
			end
			
			else begin
				LEDG <= LEDG / 2;
			end
			
			if (LEDG[6] == 1) d<=1;
				else if (LEDG[1] == 1) d<=0;
					s <= 0;
				end 

			else begin
				s <= s + 1;
			end


		end

	end

endmodule