`include "constants.vh"
`default_nettype none
//8KB Single PORT synchronous BRAM
module dmem
  (
   input wire 		      clk,
   input wire [`ADDR_LEN-1:0] addr,
   input wire [`DATA_LEN-1:0] wdata,
   input wire 		      we,
   output reg [`DATA_LEN-1:0] rdata
   );

   reg [`DATA_LEN-1:0] 	      mem [0:31];
   
   always @ (posedge clk) begin
      rdata <= mem[addr[4:0]]; // ORIGINAL: mem[addr[10:0]];
      if (we)
	       mem[addr] <= wdata;
   end

endmodule // dmem
`default_nettype wire
