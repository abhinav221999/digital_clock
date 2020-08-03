module testbench();
reg CLK;
wire SEC;
reg set;
reg reset;
reg [4:0] set_hours;
reg [6:0] set_minutes;
wire [6:0] MIN;
wire [4:0] HRS;

display displayInst(.clk(CLK), .reset(reset), .set(set), .set_hours(set_hours), .set_minutes(set_minutes), .sec(SEC), .min(MIN), .hrs(HRS));


initial
begin
     CLK= 1'b0;	
	 reset = 0;
	 set = 0;
	 set_hours = 0;
	 set_minutes = 0; 
end

always
	#1 CLK=~CLK;
	   
initial
begin
	#1200000 reset = 1;
	#100 reset =0;
	#100000 set = 1;
		  set_hours = 12;
		  set_minutes = 30;
	#100 set = 0;
	#50000 $finish;
end
// Monitor the outputs
	//initial
	//$monitor($time," CLK= %b, SECS= %b, MINS= %b, HRS= %b", CLK, SEC, MIN, HRS);

//Dumping the VCD file	
	initial
	begin
		$dumpfile("display.vcd");
		$dumpvars();
	end
endmodule