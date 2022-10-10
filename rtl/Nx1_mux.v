
////////////////////////////////////////////////////////////////// ////
//// ////

//// ////
//// This file is part of the XXX project ////
//// http://www.opencores.org/cores/xxx/ ////
//// ////
//// Description ////
//// Implementation of Genric Nx1 parameterized Multiplexer. ////
//// ////
//// To Do: ////
//// - ////
//// ////
//// Author(s): ////
//// - Kanish R, Kanish@opencores.org ////
//// ////
//////////////////////////////////////////////////////////////////////
//// ////
//// Copyright (C) 2009 Authors and OPENCORES.ORG ////
//// ////
//// This source file may be used and distributed without ////
//// restriction provided that this copyright statement is not ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer. ////
//// ////
//// This source file is free software; you can redistribute it ////
//// and/or modify it under the terms of the GNU Lesser General ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any ////
//// later version. ////
//// ////
//// This source is distributed in the hope that it will be ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR ////
//// PURPOSE. See the GNU Lesser General Public License for more ////
//// details. ////
//// ////
//// You should have received a copy of the GNU Lesser General ////
//// Public License along with this source; if not, download it ////
//// from http://www.opencores.org/lgpl.shtml ////
//// //// ///
///////////////////////////////////////////////////////////////////


module Nx1_mux(D,Y,S);
parameter N=2;
input [N-1:0]D;
input [$clog2(N)-1:0]S;
integer i;
output reg Y;
always @(*) begin
    Y=D[S];    
end
endmodule
