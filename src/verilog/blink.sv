`default_nettype none
module blink (
  input logic clock,
  input logic reset,
  output logic out
);

  reg dff;
  always @(posedge clock) begin
    if (reset) begin
      dff <= 0;
    end else begin
      dff <= ~dff;
    end
  end

  assign out = dff;

endmodule