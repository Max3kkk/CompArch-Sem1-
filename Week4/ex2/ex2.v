module ex2 (
  output [7:0] HEX0,
  output [7:0] HEX1,
  output [7:0] HEX2,
  output [7:0] HEX3,
  output [7:0] HEX4,
  output [7:0] HEX5,
  output [9:0] LED,
  input [1:0] KEY
);

genvar i;
generate
		for (i=0; i<9; i=i+2) //for MAX 10
		begin: gen
				assign LED[i]=~KEY[1];
		end
endgenerate

assign HEX0 = KEY[0] ? 8'b01100000 : 8'b00000000;//1
assign HEX1 = KEY[0] ? 8'b11110011 : 8'b00000000;//3
assign HEX2 = KEY[0] ? 8'b11111100 : 8'b00000000;//0
assign HEX3 = KEY[0] ? 8'b10110111 : 8'b00000000;//5
assign HEX4 = KEY[0] ? 8'b11111100 : 8'b00000000;//0
assign HEX5 = KEY[0] ? 8'b11011010 : 8'b00000000;//2



endmodule




/*module ex2{
	input  [1:0] KEY,
	output [7:0] HEX0,
	output [7:0] HEX1,
	output [7:0] HEX2,
	output [7:0] HEX3,
	output [7:0] HEX4,
	output [7:0] HEX5,
	output [9:0] LED
};
genvar j;
generate
	//1
	HEX0[0] = ~KEY[0],
	HEX0[3] = ~KEY[0],
	HEX0[4] = ~KEY[0],
	HEX0[5] = ~KEY[0],
	HEX0[6] = ~KEY[0],
	
	//3
	HEX1[5] = ~KEY[0],
	HEX1[4] = ~KEY[0],
	
	//0
	HEX2[6] = ~KEY[0],
	
	//5
	HEX3[1] = ~KEY[0],
	HEX3[4] = ~KEY[0],
	
	//0
	HEX4[6] = ~KEY[0],
	
	//2
	HEX5[5] = ~KEY[0],
	HEX5[2] = ~KEY[0];
endgenerate
	
genvar i;
generate
			for (i = 0; i < 9; i = i + 2)
			begin: gen
						assign LED[i] = ~KEY[1];
			end
endgenerate
endmodule
*/