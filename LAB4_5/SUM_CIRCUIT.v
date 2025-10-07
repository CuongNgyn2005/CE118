// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Sat May 17 23:33:14 2025"

module SUM_CIRCUIT(
	START,
	CLK,
	INPUT,
	DONE,
	SUM
);


input wire	START;
input wire	CLK;
input wire	[7:0] INPUT;
output wire	DONE;
output wire	[7:0] SUM;

wire	D0;
wire	D1;
wire	D2;
wire	DATA;
wire	DATA_;
reg	Q0;
wire	Q0_N;
reg	Q1;
wire	Q1_N;
reg	Q2;
wire	Q2_N;
wire	R_A0;
wire	R_A1;
wire	R_EN_A;
wire	R_EN_B;
wire	[7:0] RESULT;
wire	S0;
wire	S1;
wire	WR_A0;
wire	WR_A1;
wire	WR_ENA;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;

assign	DONE = SYNTHESIZED_WIRE_18;
assign	SYNTHESIZED_WIRE_1 = 0;




SELECTOR_8BIT	b2v_inst(
	.S(SYNTHESIZED_WIRE_0),
	.I0(RESULT),
	.I1(INPUT),
	.Q(SYNTHESIZED_WIRE_2));


REGISTER_FILE	b2v_inst1(
	.CLOCK(CLK),
	.WRI_ENA(WR_ENA),
	.WR_A0(WR_A0),
	.WR_A1(WR_A1),
	.READ_AN_A(R_EN_A),
	.R_A0(R_A0),
	.R_A1(R_A1),
	.READ_ENA_B(R_EN_B),
	.R_B0(SYNTHESIZED_WIRE_1),
	.R_B1(Q2),
	.I(SYNTHESIZED_WIRE_2),
	.A(SYNTHESIZED_WIRE_9),
	.B(SYNTHESIZED_WIRE_10));

assign	Q0_N =  ~Q0;

assign	SYNTHESIZED_WIRE_5 = Q2_N & Q1 & Q0;

assign	SYNTHESIZED_WIRE_3 = Q2 & Q0_N;

assign	SYNTHESIZED_WIRE_4 = Q2 & Q1_N;

assign	D2 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_8 = Q1_N & Q0;

assign	SYNTHESIZED_WIRE_6 = Q2_N & Q1 & Q0_N;

assign	SYNTHESIZED_WIRE_7 = DATA_ & Q2 & Q1 & Q0_N;

assign	D1 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	DATA_ =  ~DATA;


ALU	b2v_inst2(
	.S0(S0),
	.S1(S1),
	.A(SYNTHESIZED_WIRE_9),
	.B(SYNTHESIZED_WIRE_10),
	.Q(RESULT));

assign	SYNTHESIZED_WIRE_11 = Q2_N & Q1_N & Q0_N & START;

assign	SYNTHESIZED_WIRE_14 = Q2 & Q1 & Q0_N & DATA_;

assign	SYNTHESIZED_WIRE_12 = Q2_N & Q1 & Q0_N;

assign	SYNTHESIZED_WIRE_13 = Q2 & Q1_N & Q0_N;

assign	D0 = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_0 = Q2_N & Q1_N & Q0;

assign	SYNTHESIZED_WIRE_15 = Q2_N & Q0;

assign	SYNTHESIZED_WIRE_16 = Q1 & Q0_N;

assign	WR_ENA = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_20 = Q2 & Q1_N;


TRI_8BIT	b2v_inst3(
	.S(SYNTHESIZED_WIRE_18),
	.I(RESULT),
	.Q(SUM));

assign	SYNTHESIZED_WIRE_19 = Q2_N & Q1;

assign	WR_A1 = SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_22 = Q2_N & Q0;

assign	SYNTHESIZED_WIRE_21 = Q2 & Q0_N;

assign	WR_A0 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	R_EN_A = Q1 | Q2;

assign	SYNTHESIZED_WIRE_24 = Q2 & Q1_N;

assign	SYNTHESIZED_WIRE_23 = Q2 & Q0;

assign	R_A1 = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_26 = Q2 & Q1_N;


always@(posedge CLK)
begin
	begin
	Q2 <= D2;
	end
end

assign	SYNTHESIZED_WIRE_25 = Q2 & Q0_N;

assign	R_A0 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_27 = Q2 & Q1_N & Q0;

assign	SYNTHESIZED_WIRE_28 = Q2_N & Q1;

assign	R_EN_B = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;


assign	S1 = Q2 & Q1;

assign	S0 = Q2 & Q0_N;

assign	SYNTHESIZED_WIRE_18 = Q2 & Q1 & Q0;


always@(posedge CLK)
begin
	begin
	Q1 <= D1;
	end
end


always@(posedge CLK)
begin
	begin
	Q0 <= D0;
	end
end

assign	DATA = RESULT[0] | RESULT[2] | RESULT[1] | RESULT[3] | RESULT[5] | RESULT[4] | RESULT[6] | RESULT[7];

assign	Q2_N =  ~Q2;

assign	Q1_N =  ~Q1;

assign	SYNTHESIZED_WIRE_17 = Q2 & Q1_N;


endmodule
