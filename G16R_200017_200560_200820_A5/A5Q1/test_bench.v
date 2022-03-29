`include "gcd.v"

module test_bench;

	reg[7:0] x;
	reg[7:0] y;
	reg[7:0] res;

	eight_bit_gcd g (x, y, res);

	initial begin
		x = 86;
		y = 84;
		#5;
		x = 90;
		y = 23;
		#5;
		x = 45;
		y = 456;
		#5;
		x = 57;
		y = 34;
		#5;
		x = 234;
		y = 4356;
		#5;
		x = 12;
		y = 34;
		#5;
		x = 10;
		y = 30;
		#5;
		x = 234;
		y = 436;
		#5;
		x = 1010;
		y = 1001;
		#5;
		x = 1234;
		y = 2345;
		#5;
		x = 3456;
		y = 4567;
		#5;
		x = 5678;
		y = 4567;
		#5;
		x = 3858;
		y = 3857;
		#5;
		x = 3948;
		y = 4959;
		#5;
		x = 1020;
		y = 1030;
		#5;
	end
	initial begin
		$monitor ("Time = %d x = %d y = %d res = %d", $time, x, y, res);
	end

endmodule