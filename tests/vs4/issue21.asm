//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
vs_4_0
dcl_input v0.xy
dcl_output o0.xyzw
dcl_temps 1
eq r0.xy, v0.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
and r0.x, r0.y, r0.x
movc o0.xyzw, r0.xxxx, l(0,0,0,0), l(1.000000,1.000000,1.000000,1.000000)
ret 
// Approximately 4 instruction slots used
