//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T hs_5_0 /Fo basic_change_pos.o /Fc basic_change_pos.asm
//    basic_change_pos
//
//
//
// Patch Constant signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_TessFactor            0   x           0  LINEDEN  float   x   
// SV_TessFactor            1   x           1  LINEDET  float   x   
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// CPOINT                   0   xyz         0     NONE  float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// CPOINT                   0   xyz         0     NONE  float   xyz 
//
// Tessellation Domain   # of control points
// -------------------- --------------------
// Isoline                                 4
//
// Tessellation Output Primitive  Partitioning Type 
// ------------------------------ ------------------
// Line                           Integer           
//
hs_5_0
hs_decls 
dcl_input_control_point_count 4
dcl_output_control_point_count 4
dcl_tessellator_domain domain_isoline
dcl_tessellator_partitioning partitioning_integer
dcl_tessellator_output_primitive output_line
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 1.000000, 0, 0, 0},
                              { 8.000000, 0, 0, 0} }
hs_control_point_phase 
dcl_input vOutputControlPointID
dcl_input v[4][0].xy
dcl_output o0.xyz
dcl_temps 1
mov r0.x, vOutputControlPointID
mov o0.xyz, v[r0.x + 0][0].xyyx
ret 
hs_fork_phase 
dcl_hs_fork_phase_instance_count 2
dcl_input vForkInstanceID
dcl_output_siv o0.x, finalLineDensityTessFactor
dcl_output_siv o1.x, finalLineDetailTessFactor
dcl_temps 1
dcl_indexrange o0.x 2
mov r0.x, vForkInstanceID.x
mov o[r0.x + 0].x, icb[r0.x + 0].x
ret 
// Approximately 6 instruction slots used
