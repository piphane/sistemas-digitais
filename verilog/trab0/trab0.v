module trab0(
	input [0:5] SW,
	input [0:1] KEY,
	input CLOCK_50,

	output reg [0:7] HEX0,
	output reg [0:7] HEX1,
	output reg [0:7] HEX2,
	output reg [0:7] HEX3
);

	always @(posedge CLOCK_50) begin
	
	/* Braile (6 posiçoes)
			0 1
			2 3
			4 5
			Onde: 
				1 = SW[0] (switch mais a esquerda da serie de switchs) 
				5 = SW[5] (switch mais a direita)
				
				SW[5] SW[4] SW[3] SW[2] SW[1] SW[0]
				
		  [0]    ####
		[5] [1]  #  #
		  [6]    ####
		[4] [2]  #  #
		  [3]    #### 			
	*/

		if ( SW[0] == 1) begin // A
		/*	-- Braile --
				0 1   # .
				2 3   . .
				4 5   . .
		   -- Segmentos --
				  [0]    ####
				[5] [1]  #  #
				  [6]    ####
				[4] [2]  #  #
				  [3]    ....
		*/
			HEX0[0] <= 0;
			HEX0[1] <= 0;
			HEX0[2] <= 0;
			HEX0[3] <= 1;
			HEX0[4] <= 0;
			HEX0[5] <= 0;
			HEX0[6] <= 0;
			
			if (SW[3] == 1) begin // E
			/*	-- Braile --
					0 1   # #
					2 3   , .
					4 5   . .
				-- Segmentos --
					  [0]    ####
					[5] [1]  #  .
					  [6]    ####
					[4] [2]  #  .
					  [3]    ####
			*/
				HEX0[0] <= 0;
				HEX0[1] <= 1;
				HEX0[2] <= 1;
				HEX0[3] <= 0;
				HEX0[4] <= 0;
				HEX0[5] <= 0;
				HEX0[6] <= 0;
				
				
				
			end
			
			if (SW[1] == 1) begin // C
			/*	-- Braile --
					0 1   # #
					2 3   , .
					4 5   . .
				-- Segmentos --
					  [0]    ####
					[5] [1]  #  .
					  [6]    ....
					[4] [2]  #  .
					  [3]    ####
			*/
				HEX0[0] <= 0;
				HEX0[1] <= 1;
				HEX0[2] <= 1;
				HEX0[3] <= 0;
				HEX0[4] <= 0;
				HEX0[5] <= 0;
				HEX0[6] <= 1;
				
				if (SW[2] == 1) begin // F
				/*	-- Braile --
						0 1   # #
						2 3   # .
						4 5   . .
					-- Segmentos --
						  [0]    ####
						[5] [1]  #  .
						  [6]    ####
						[4] [2]  #  .
						  [3]    ....
				*/
					HEX0[0] <= 0;
					HEX0[1] <= 1;
					HEX0[2] <= 1;
					HEX0[3] <= 1;
					HEX0[4] <= 0;
					HEX0[5] <= 0;
					HEX0[6] <= 0;
					
				end
				
				if (SW[3] == 1) begin // D
				/*	-- Braile --
						0 1   # #
						2 3   . #
						4 5   . .
					-- Segmentos --
						  [0]    ####
						[5] [1]  #  #
						  [6]    ....
						[4] [2]  #  #
						  [3]    ####
				*/
					HEX0[0] <= 0;
					HEX0[1] <= 0;
					HEX0[2] <= 0;
					HEX0[3] <= 0;
					HEX0[4] <= 0;
					HEX0[5] <= 0;
					HEX0[6] <= 1;
					
				end
			end	
			
			else if (SW[2] == 1) begin // B
			/*	-- Braile --
					0 1   # .
					2 3   # .
					4 5   . .
				-- Segmentos --
					  [0]    ####
					[5] [1]  #  #
					  [6]    ####
					[4] [2]  #  #
					  [3]    ####
			*/
				HEX0[0] <= 0;
				HEX0[1] <= 0;
				HEX0[2] <= 0;
				HEX0[3] <= 0;
				HEX0[4] <= 0;
				HEX0[5] <= 0;
				HEX0[6] <= 0;
			end	
			
		end
	
	
	
		// todos apagados
		else begin
			HEX0[0] <= 1;
			HEX0[1] <= 1;
			HEX0[2] <= 1;
			HEX0[3] <= 1;
			HEX0[4] <= 1;
			HEX0[5] <= 1;
			HEX0[6] <= 1;
			
			HEX1[0] <= 1;
			HEX1[1] <= 1;
			HEX1[2] <= 1;
			HEX1[3] <= 1;
			HEX1[4] <= 1;
			HEX1[5] <= 1;
			HEX1[6] <= 1;
			
			HEX2[0] <= 1;
			HEX2[1] <= 1;
			HEX2[2] <= 1;
			HEX2[3] <= 1;
			HEX2[4] <= 1;
			HEX2[5] <= 1;
			HEX2[6] <= 1;
			
			HEX3[0] <= 1;
			HEX3[1] <= 1;
			HEX3[2] <= 1;
			HEX3[3] <= 1;
			HEX3[4] <= 1;
			HEX3[5] <= 1;
			HEX3[6] <= 1;
		end
	
	end

endmodule
