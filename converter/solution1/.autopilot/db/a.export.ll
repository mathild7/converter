; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/converter/converter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a18]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@converter_str = internal unnamed_addr constant [10 x i8] c"converter\00"
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i79 @llvm.part.select.i79(i79, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @converter(float* %in_V, i32* %out_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_V), !map !477
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_V), !map !486
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @converter_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %in_V, [5 x i8]* @p_str1, i32 1, i32 1, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tmp = call float @_ssdm_op_Read.axis.volatile.floatP(float* %in_V)
  %val_assign = fmul float %tmp, 8.388607e+06
  %p_Val2_s = bitcast float %val_assign to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %tmp_3_i_i_i = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_1, i1 false)
  %tmp_3_i_i_i_cast2 = zext i25 %tmp_3_i_i_i to i79
  %tmp_i_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_5_i_i_i = sub i8 127, %loc_V
  %tmp_5_i_i_i_cast = sext i8 %tmp_5_i_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_5_i_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cas = sext i9 %sh_assign_1 to i25
  %tmp_7_i_i_i = zext i32 %sh_assign_1_cast to i79
  %tmp_8_i_i_i = lshr i25 %tmp_3_i_i_i, %sh_assign_1_cast_cas
  %tmp_i_i_i = shl i79 %tmp_3_i_i_i_cast2, %tmp_7_i_i_i
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_8_i_i_i, i32 24)
  %tmp_4 = zext i1 %tmp_8 to i24
  %tmp_5 = call i24 @_ssdm_op_PartSelect.i24.i79.i32.i32(i79 %tmp_i_i_i, i32 24, i32 47)
  %tmp_6 = select i1 %isNeg, i24 %tmp_4, i24 %tmp_5
  %tmp_3 = sub i24 0, %tmp_6
  %converted_V = select i1 %p_Result_s, i24 %tmp_3, i24 %tmp_6
  %tmp1 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %converted_V, i8 0)
  call void @_ssdm_op_Write.axis.volatile.i32P(i32* %out_V, i32 %tmp1)
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_6 = trunc i32 %empty to i8
  ret i8 %empty_6
}

define weak i24 @_ssdm_op_PartSelect.i24.i79.i32.i32(i79, i32, i32) nounwind readnone {
entry:
  %empty = call i79 @llvm.part.select.i79(i79 %0, i32 %1, i32 %2)
  %empty_7 = trunc i79 %empty to i24
  ret i24 %empty_7
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_8 = shl i9 1, %empty
  %empty_9 = and i9 %0, %empty_8
  %empty_10 = icmp ne i9 %empty_9, 0
  ret i1 %empty_10
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_11 = and i32 %0, %empty
  %empty_12 = icmp ne i32 %empty_11, 0
  ret i1 %empty_12
}

define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25
  %empty_13 = shl i25 1, %empty
  %empty_14 = and i25 %0, %empty_13
  %empty_15 = icmp ne i25 %empty_14, 0
  ret i1 %empty_15
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %0 to i32
  %empty_16 = zext i8 %1 to i32
  %empty_17 = shl i32 %empty, 8
  %empty_18 = or i32 %empty_17, %empty_16
  ret i32 %empty_18
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1, i23, i1) nounwind readnone {
entry:
  %empty = zext i23 %1 to i24
  %empty_19 = zext i1 %2 to i24
  %empty_20 = shl i24 %empty, 1
  %empty_21 = or i24 %empty_20, %empty_19
  %empty_22 = zext i1 %0 to i25
  %empty_23 = zext i24 %empty_21 to i25
  %empty_24 = shl i25 %empty_22, 24
  %empty_25 = or i25 %empty_24, %empty_23
  ret i25 %empty_25
}

declare void @_GLOBAL__I_a18() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !15, !18, !18, !21, !21, !18, !18, !21, !21, !27, !27, !29, !32, !34, !34, !34, !34, !37, !37, !37, !37, !38, !38, !38, !38, !34, !34, !34, !34, !37, !37, !37, !37, !38, !38, !38, !38, !40, !43, !21, !21, !21, !49, !52, !52, !21, !54, !54, !56, !21, !21, !21, !18, !18, !21, !21, !58, !61, !61, !21, !63, !65, !65, !21, !67, !67, !69, !67, !67, !69, !71, !52, !52, !77, !21, !21, !21, !80, !52, !52, !21, !21, !21, !82, !52, !52, !84, !21, !21, !21, !86, !86, !88, !88, !90, !21, !21, !69, !69, !21, !92, !94, !97, !97, !101, !101, !104, !104, !108, !110, !110, !21, !21, !21, !21, !112, !114, !114, !21, !21, !101, !115, !115, !117, !117, !119, !121, !121, !122, !124, !124, !122, !126, !126, !128, !130, !130, !21, !21, !131, !133, !133, !101, !101, !134, !134, !128, !131, !133, !133, !21, !101, !136, !136, !138, !139, !139, !141, !21, !92, !138, !143, !143, !145, !145, !21, !21, !21, !21, !21, !21, !21, !21, !40, !147, !21, !21, !21, !49, !149, !149, !151, !21, !18, !18, !21, !21, !153, !63, !155, !155, !21, !157, !157, !159, !157, !157, !159, !71, !161, !21, !21, !21, !163, !52, !52, !90, !21, !21, !159, !159, !124, !124, !122, !40, !165, !21, !21, !21, !49, !52, !52, !21, !167, !167, !169, !21, !18, !18, !21, !21, !171, !63, !173, !173, !21, !175, !175, !177, !175, !175, !177, !71, !179, !21, !21, !21, !181, !52, !52, !90, !21, !21, !177, !177, !124, !124, !122, !40, !183, !21, !21, !21, !49, !52, !52, !21, !185, !185, !187, !21, !18, !18, !21, !21, !189, !63, !191, !191, !21, !193, !193, !195, !193, !193, !195, !71, !197, !21, !21, !21, !199, !52, !52, !90, !21, !21, !195, !195, !124, !124, !122, !201, !203, !21, !205, !205, !207, !205, !205, !207, !209, !21, !21, !21, !211, !52, !52, !21, !213, !215, !217, !217, !90, !21, !21, !207, !207, !21, !92, !94, !219, !219, !101, !101, !221, !221, !223, !225, !225, !21, !21, !21, !21, !226, !228, !228, !21, !21, !101, !229, !229, !117, !117, !119, !121, !121, !231, !233, !233, !231, !235, !235, !236, !238, !238, !21, !21, !239, !241, !241, !101, !101, !242, !242, !236, !239, !241, !241, !101, !244, !244, !138, !246, !246, !248, !21, !250, !250, !21, !21, !21, !21, !201, !251, !253, !253, !255, !253, !253, !255, !257, !21, !21, !21, !259, !52, !52, !90, !21, !21, !255, !255, !233, !233, !231, !201, !261, !263, !263, !265, !263, !263, !265, !267, !21, !21, !21, !269, !52, !52, !90, !21, !21, !265, !265, !233, !233, !231, !201, !271, !273, !273, !275, !273, !273, !275, !277, !21, !21, !21, !279, !52, !52, !90, !21, !21, !275, !275, !233, !233, !231, !281, !283, !21, !285, !287, !288, !288, !290, !288, !288, !290, !292, !21, !21, !21, !294, !52, !52, !21, !296, !297, !299, !299, !90, !21, !21, !290, !290, !21, !92, !94, !301, !301, !101, !101, !303, !303, !305, !307, !307, !21, !21, !21, !308, !310, !310, !21, !101, !311, !311, !117, !117, !119, !121, !121, !313, !315, !315, !313, !317, !317, !318, !320, !320, !21, !21, !321, !323, !323, !101, !101, !324, !324, !318, !321, !323, !323, !21, !101, !326, !326, !138, !328, !328, !330, !21, !332, !332, !21, !21, !21, !21, !21, !281, !334, !336, !336, !338, !336, !336, !338, !340, !21, !21, !342, !52, !52, !90, !21, !21, !338, !338, !315, !315, !313, !281, !344, !346, !346, !348, !346, !346, !348, !350, !21, !21, !21, !352, !52, !52, !90, !21, !21, !348, !348, !315, !315, !313, !281, !354, !356, !356, !358, !356, !356, !358, !360, !21, !21, !21, !362, !52, !52, !90, !21, !21, !358, !358, !315, !315, !313, !40, !364, !21, !21, !21, !21, !366, !366, !368, !368, !370, !372, !372, !21, !92, !138, !374, !374, !18, !18, !21, !376, !63, !378, !378, !21, !67, !67, !69, !67, !67, !69, !71, !40, !380, !21, !21, !21, !21, !382, !382, !121, !121, !384, !386, !386, !21, !92, !138, !388, !388, !18, !18, !21, !390, !63, !392, !392, !21, !157, !157, !159, !21, !157, !157, !159, !71, !40, !394, !21, !21, !21, !21, !396, !396, !398, !398, !400, !402, !402, !21, !92, !138, !404, !404, !18, !18, !21, !406, !63, !408, !408, !21, !175, !175, !177, !21, !175, !175, !177, !71, !40, !410, !21, !21, !21, !21, !412, !412, !414, !414, !416, !418, !418, !21, !92, !138, !420, !420, !18, !18, !21, !422, !63, !424, !424, !21, !193, !193, !195, !21, !193, !193, !195, !71, !201, !426, !205, !205, !207, !205, !205, !207, !201, !428, !253, !253, !255, !253, !253, !255, !201, !430, !263, !263, !265, !263, !263, !265, !201, !432, !273, !273, !275, !273, !273, !275, !281, !434, !288, !288, !290, !288, !288, !290, !281, !436, !336, !336, !338, !336, !336, !338, !281, !438, !346, !346, !348, !346, !346, !348, !281, !440, !356, !356, !358, !356, !356, !358, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !447, !447, !448, !21, !450, !21, !21, !21, !452, !452, !454, !454, !456, !21, !21, !21, !458, !21, !21, !21, !21, !460, !21, !117, !117, !119, !121, !121, !462, !447, !447, !448, !460, !117, !117, !119, !121, !121, !464, !447, !447, !448, !460, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !466, !466, !466, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !466, !466, !466, !21, !466, !466, !466, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442, !21, !442, !442, !442}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!470}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<float> &", metadata !"stream<struct padded_data> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct padded_data &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<24> &"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!18 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !20, metadata !6}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !20, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"half"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !36, metadata !6}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !36, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow"}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !""}
!49 = metadata !{null, metadata !8, metadata !9, metadata !50, metadata !11, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!52 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !53, metadata !6}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !53, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !53, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!58 = metadata !{null, metadata !1, metadata !2, metadata !59, metadata !4, metadata !60, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!61 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !62, metadata !6}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !17, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !53, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !53, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<169, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!69 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !53, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<169, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!71 = metadata !{null, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !6}
!72 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!73 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!75 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!77 = metadata !{null, metadata !1, metadata !2, metadata !78, metadata !4, metadata !79, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &", metadata !"int"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !17, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &"}
!82 = metadata !{null, metadata !1, metadata !2, metadata !83, metadata !4, metadata !60, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!84 = metadata !{null, metadata !1, metadata !2, metadata !85, metadata !4, metadata !79, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!86 = metadata !{null, metadata !8, metadata !9, metadata !87, metadata !11, metadata !53, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!88 = metadata !{null, metadata !8, metadata !9, metadata !89, metadata !11, metadata !53, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!90 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !91, metadata !6}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!92 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !20, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !95, metadata !11, metadata !96, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!97 = metadata !{null, metadata !98, metadata !2, metadata !99, metadata !4, metadata !100, metadata !6}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!100 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!101 = metadata !{null, metadata !1, metadata !2, metadata !102, metadata !4, metadata !103, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!104 = metadata !{null, metadata !105, metadata !45, metadata !106, metadata !47, metadata !107, metadata !6}
!105 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!108 = metadata !{null, metadata !8, metadata !9, metadata !109, metadata !11, metadata !20, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!110 = metadata !{null, metadata !8, metadata !9, metadata !109, metadata !11, metadata !111, metadata !6}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !20, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!114 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !53, metadata !6}
!115 = metadata !{null, metadata !105, metadata !45, metadata !116, metadata !47, metadata !107, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !118, metadata !6}
!118 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!119 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !120, metadata !6}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!121 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !53, metadata !6}
!122 = metadata !{null, metadata !8, metadata !9, metadata !123, metadata !11, metadata !53, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!124 = metadata !{null, metadata !8, metadata !9, metadata !125, metadata !11, metadata !53, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!126 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !127, metadata !6}
!127 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!128 = metadata !{null, metadata !8, metadata !9, metadata !129, metadata !11, metadata !20, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!130 = metadata !{null, metadata !8, metadata !9, metadata !129, metadata !11, metadata !111, metadata !6}
!131 = metadata !{null, metadata !8, metadata !9, metadata !132, metadata !11, metadata !20, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!133 = metadata !{null, metadata !8, metadata !9, metadata !132, metadata !11, metadata !53, metadata !6}
!134 = metadata !{null, metadata !105, metadata !45, metadata !135, metadata !47, metadata !107, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!136 = metadata !{null, metadata !105, metadata !45, metadata !137, metadata !47, metadata !107, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!138 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !96, metadata !6}
!139 = metadata !{null, metadata !98, metadata !2, metadata !140, metadata !4, metadata !100, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!141 = metadata !{null, metadata !8, metadata !9, metadata !142, metadata !11, metadata !20, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!143 = metadata !{null, metadata !98, metadata !2, metadata !144, metadata !4, metadata !100, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!145 = metadata !{null, metadata !8, metadata !9, metadata !146, metadata !11, metadata !20, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!147 = metadata !{null, metadata !44, metadata !45, metadata !148, metadata !47, metadata !48, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!149 = metadata !{null, metadata !8, metadata !9, metadata !150, metadata !11, metadata !53, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!151 = metadata !{null, metadata !8, metadata !9, metadata !152, metadata !11, metadata !53, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!153 = metadata !{null, metadata !1, metadata !2, metadata !154, metadata !4, metadata !60, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!155 = metadata !{null, metadata !8, metadata !9, metadata !156, metadata !11, metadata !53, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!157 = metadata !{null, metadata !8, metadata !9, metadata !158, metadata !11, metadata !53, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<137, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !160, metadata !11, metadata !53, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<137, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!161 = metadata !{null, metadata !1, metadata !2, metadata !162, metadata !4, metadata !79, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &", metadata !"int"}
!163 = metadata !{null, metadata !8, metadata !9, metadata !164, metadata !11, metadata !17, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &"}
!165 = metadata !{null, metadata !44, metadata !45, metadata !166, metadata !47, metadata !48, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!167 = metadata !{null, metadata !8, metadata !9, metadata !168, metadata !11, metadata !53, metadata !6}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!169 = metadata !{null, metadata !8, metadata !9, metadata !170, metadata !11, metadata !53, metadata !6}
!170 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!171 = metadata !{null, metadata !1, metadata !2, metadata !172, metadata !4, metadata !60, metadata !6}
!172 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!173 = metadata !{null, metadata !8, metadata !9, metadata !174, metadata !11, metadata !53, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!175 = metadata !{null, metadata !8, metadata !9, metadata !176, metadata !11, metadata !53, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<121, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!177 = metadata !{null, metadata !8, metadata !9, metadata !178, metadata !11, metadata !53, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<121, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!179 = metadata !{null, metadata !1, metadata !2, metadata !180, metadata !4, metadata !79, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &", metadata !"int"}
!181 = metadata !{null, metadata !8, metadata !9, metadata !182, metadata !11, metadata !17, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &"}
!183 = metadata !{null, metadata !44, metadata !45, metadata !184, metadata !47, metadata !48, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!185 = metadata !{null, metadata !8, metadata !9, metadata !186, metadata !11, metadata !53, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!187 = metadata !{null, metadata !8, metadata !9, metadata !188, metadata !11, metadata !53, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!189 = metadata !{null, metadata !1, metadata !2, metadata !190, metadata !4, metadata !60, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!191 = metadata !{null, metadata !8, metadata !9, metadata !192, metadata !11, metadata !53, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!193 = metadata !{null, metadata !8, metadata !9, metadata !194, metadata !11, metadata !53, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<113, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!195 = metadata !{null, metadata !8, metadata !9, metadata !196, metadata !11, metadata !53, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<113, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!197 = metadata !{null, metadata !1, metadata !2, metadata !198, metadata !4, metadata !79, metadata !6}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &", metadata !"int"}
!199 = metadata !{null, metadata !8, metadata !9, metadata !200, metadata !11, metadata !17, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &"}
!201 = metadata !{null, metadata !1, metadata !2, metadata !202, metadata !4, metadata !42, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool"}
!203 = metadata !{null, metadata !44, metadata !45, metadata !204, metadata !47, metadata !48, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!205 = metadata !{null, metadata !8, metadata !9, metadata !206, metadata !11, metadata !53, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<111, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!207 = metadata !{null, metadata !8, metadata !9, metadata !208, metadata !11, metadata !53, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<111, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!209 = metadata !{null, metadata !1, metadata !2, metadata !210, metadata !4, metadata !79, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &", metadata !"int"}
!211 = metadata !{null, metadata !8, metadata !9, metadata !212, metadata !11, metadata !17, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &"}
!213 = metadata !{null, metadata !1, metadata !2, metadata !214, metadata !4, metadata !60, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!215 = metadata !{null, metadata !1, metadata !2, metadata !216, metadata !4, metadata !79, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!217 = metadata !{null, metadata !8, metadata !9, metadata !218, metadata !11, metadata !53, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!219 = metadata !{null, metadata !98, metadata !2, metadata !220, metadata !4, metadata !100, metadata !6}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!221 = metadata !{null, metadata !105, metadata !45, metadata !222, metadata !47, metadata !107, metadata !6}
!222 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!223 = metadata !{null, metadata !8, metadata !9, metadata !224, metadata !11, metadata !20, metadata !6}
!224 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!225 = metadata !{null, metadata !8, metadata !9, metadata !224, metadata !11, metadata !111, metadata !6}
!226 = metadata !{null, metadata !8, metadata !9, metadata !227, metadata !11, metadata !20, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!228 = metadata !{null, metadata !8, metadata !9, metadata !227, metadata !11, metadata !53, metadata !6}
!229 = metadata !{null, metadata !105, metadata !45, metadata !230, metadata !47, metadata !107, metadata !6}
!230 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!231 = metadata !{null, metadata !8, metadata !9, metadata !232, metadata !11, metadata !53, metadata !6}
!232 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!233 = metadata !{null, metadata !8, metadata !9, metadata !234, metadata !11, metadata !53, metadata !6}
!234 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!235 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !127, metadata !6}
!236 = metadata !{null, metadata !8, metadata !9, metadata !237, metadata !11, metadata !20, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!238 = metadata !{null, metadata !8, metadata !9, metadata !237, metadata !11, metadata !111, metadata !6}
!239 = metadata !{null, metadata !8, metadata !9, metadata !240, metadata !11, metadata !20, metadata !6}
!240 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!241 = metadata !{null, metadata !8, metadata !9, metadata !240, metadata !11, metadata !53, metadata !6}
!242 = metadata !{null, metadata !105, metadata !45, metadata !243, metadata !47, metadata !107, metadata !6}
!243 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!244 = metadata !{null, metadata !105, metadata !45, metadata !245, metadata !47, metadata !107, metadata !6}
!245 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!246 = metadata !{null, metadata !98, metadata !2, metadata !247, metadata !4, metadata !100, metadata !6}
!247 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!248 = metadata !{null, metadata !8, metadata !9, metadata !249, metadata !11, metadata !20, metadata !6}
!249 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!250 = metadata !{null, metadata !8, metadata !9, metadata !95, metadata !11, metadata !20, metadata !6}
!251 = metadata !{null, metadata !44, metadata !45, metadata !252, metadata !47, metadata !48, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!253 = metadata !{null, metadata !8, metadata !9, metadata !254, metadata !11, metadata !53, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<79, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!255 = metadata !{null, metadata !8, metadata !9, metadata !256, metadata !11, metadata !53, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!257 = metadata !{null, metadata !1, metadata !2, metadata !258, metadata !4, metadata !79, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"int"}
!259 = metadata !{null, metadata !8, metadata !9, metadata !260, metadata !11, metadata !17, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!261 = metadata !{null, metadata !44, metadata !45, metadata !262, metadata !47, metadata !48, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!263 = metadata !{null, metadata !8, metadata !9, metadata !264, metadata !11, metadata !53, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!265 = metadata !{null, metadata !8, metadata !9, metadata !266, metadata !11, metadata !53, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!267 = metadata !{null, metadata !1, metadata !2, metadata !268, metadata !4, metadata !79, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &", metadata !"int"}
!269 = metadata !{null, metadata !8, metadata !9, metadata !270, metadata !11, metadata !17, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &"}
!271 = metadata !{null, metadata !44, metadata !45, metadata !272, metadata !47, metadata !48, metadata !6}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!273 = metadata !{null, metadata !8, metadata !9, metadata !274, metadata !11, metadata !53, metadata !6}
!274 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!275 = metadata !{null, metadata !8, metadata !9, metadata !276, metadata !11, metadata !53, metadata !6}
!276 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!277 = metadata !{null, metadata !1, metadata !2, metadata !278, metadata !4, metadata !79, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!279 = metadata !{null, metadata !8, metadata !9, metadata !280, metadata !11, metadata !17, metadata !6}
!280 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!281 = metadata !{null, metadata !1, metadata !2, metadata !282, metadata !4, metadata !42, metadata !6}
!282 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool"}
!283 = metadata !{null, metadata !44, metadata !45, metadata !284, metadata !47, metadata !48, metadata !6}
!284 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!285 = metadata !{null, metadata !1, metadata !2, metadata !286, metadata !4, metadata !79, metadata !6}
!286 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!287 = metadata !{null, metadata !8, metadata !9, metadata !87, metadata !11, metadata !17, metadata !6}
!288 = metadata !{null, metadata !8, metadata !9, metadata !289, metadata !11, metadata !53, metadata !6}
!289 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<85, 74, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!290 = metadata !{null, metadata !8, metadata !9, metadata !291, metadata !11, metadata !53, metadata !6}
!291 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<85, 74, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!292 = metadata !{null, metadata !1, metadata !2, metadata !293, metadata !4, metadata !79, metadata !6}
!293 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &", metadata !"int"}
!294 = metadata !{null, metadata !8, metadata !9, metadata !295, metadata !11, metadata !17, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &"}
!296 = metadata !{null, metadata !1, metadata !2, metadata !286, metadata !4, metadata !60, metadata !6}
!297 = metadata !{null, metadata !1, metadata !2, metadata !298, metadata !4, metadata !79, metadata !6}
!298 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!299 = metadata !{null, metadata !8, metadata !9, metadata !300, metadata !11, metadata !53, metadata !6}
!300 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!301 = metadata !{null, metadata !98, metadata !2, metadata !302, metadata !4, metadata !100, metadata !6}
!302 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!303 = metadata !{null, metadata !105, metadata !45, metadata !304, metadata !47, metadata !107, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false>*", metadata !"int", metadata !"int"}
!305 = metadata !{null, metadata !8, metadata !9, metadata !306, metadata !11, metadata !20, metadata !6}
!306 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<10, false> &"}
!307 = metadata !{null, metadata !8, metadata !9, metadata !306, metadata !11, metadata !111, metadata !6}
!308 = metadata !{null, metadata !8, metadata !9, metadata !309, metadata !11, metadata !20, metadata !6}
!309 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!310 = metadata !{null, metadata !8, metadata !9, metadata !309, metadata !11, metadata !53, metadata !6}
!311 = metadata !{null, metadata !105, metadata !45, metadata !312, metadata !47, metadata !107, metadata !6}
!312 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!313 = metadata !{null, metadata !8, metadata !9, metadata !314, metadata !11, metadata !53, metadata !6}
!314 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!315 = metadata !{null, metadata !8, metadata !9, metadata !316, metadata !11, metadata !53, metadata !6}
!316 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<11, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!317 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !127, metadata !6}
!318 = metadata !{null, metadata !8, metadata !9, metadata !319, metadata !11, metadata !20, metadata !6}
!319 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<16, false> &"}
!320 = metadata !{null, metadata !8, metadata !9, metadata !319, metadata !11, metadata !111, metadata !6}
!321 = metadata !{null, metadata !8, metadata !9, metadata !322, metadata !11, metadata !20, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!323 = metadata !{null, metadata !8, metadata !9, metadata !322, metadata !11, metadata !53, metadata !6}
!324 = metadata !{null, metadata !105, metadata !45, metadata !325, metadata !47, metadata !107, metadata !6}
!325 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!326 = metadata !{null, metadata !105, metadata !45, metadata !327, metadata !47, metadata !107, metadata !6}
!327 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<5, false>*", metadata !"int", metadata !"int"}
!328 = metadata !{null, metadata !98, metadata !2, metadata !329, metadata !4, metadata !100, metadata !6}
!329 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int"}
!330 = metadata !{null, metadata !8, metadata !9, metadata !331, metadata !11, metadata !20, metadata !6}
!331 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<16, false> &"}
!332 = metadata !{null, metadata !8, metadata !9, metadata !333, metadata !11, metadata !20, metadata !6}
!333 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!334 = metadata !{null, metadata !44, metadata !45, metadata !335, metadata !47, metadata !48, metadata !6}
!335 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!336 = metadata !{null, metadata !8, metadata !9, metadata !337, metadata !11, metadata !53, metadata !6}
!337 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 42, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!338 = metadata !{null, metadata !8, metadata !9, metadata !339, metadata !11, metadata !53, metadata !6}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 42, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!340 = metadata !{null, metadata !1, metadata !2, metadata !341, metadata !4, metadata !79, metadata !6}
!341 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!342 = metadata !{null, metadata !8, metadata !9, metadata !343, metadata !11, metadata !17, metadata !6}
!343 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!344 = metadata !{null, metadata !44, metadata !45, metadata !345, metadata !47, metadata !48, metadata !6}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!346 = metadata !{null, metadata !8, metadata !9, metadata !347, metadata !11, metadata !53, metadata !6}
!347 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<37, 26, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!348 = metadata !{null, metadata !8, metadata !9, metadata !349, metadata !11, metadata !53, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<37, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!350 = metadata !{null, metadata !1, metadata !2, metadata !351, metadata !4, metadata !79, metadata !6}
!351 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &", metadata !"int"}
!352 = metadata !{null, metadata !8, metadata !9, metadata !353, metadata !11, metadata !17, metadata !6}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &"}
!354 = metadata !{null, metadata !44, metadata !45, metadata !355, metadata !47, metadata !48, metadata !6}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!356 = metadata !{null, metadata !8, metadata !9, metadata !357, metadata !11, metadata !53, metadata !6}
!357 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<29, 18, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!358 = metadata !{null, metadata !8, metadata !9, metadata !359, metadata !11, metadata !53, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 18, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!360 = metadata !{null, metadata !1, metadata !2, metadata !361, metadata !4, metadata !79, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!362 = metadata !{null, metadata !8, metadata !9, metadata !363, metadata !11, metadata !17, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!364 = metadata !{null, metadata !44, metadata !45, metadata !365, metadata !47, metadata !48, metadata !6}
!365 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!366 = metadata !{null, metadata !8, metadata !9, metadata !367, metadata !11, metadata !53, metadata !6}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 63, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!368 = metadata !{null, metadata !8, metadata !9, metadata !369, metadata !11, metadata !53, metadata !6}
!369 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!370 = metadata !{null, metadata !8, metadata !9, metadata !371, metadata !11, metadata !53, metadata !6}
!371 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!372 = metadata !{null, metadata !8, metadata !9, metadata !373, metadata !11, metadata !53, metadata !6}
!373 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 63, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!374 = metadata !{null, metadata !98, metadata !2, metadata !375, metadata !4, metadata !100, metadata !6}
!375 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!376 = metadata !{null, metadata !1, metadata !2, metadata !377, metadata !4, metadata !60, metadata !6}
!377 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!378 = metadata !{null, metadata !8, metadata !9, metadata !379, metadata !11, metadata !53, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!380 = metadata !{null, metadata !44, metadata !45, metadata !381, metadata !47, metadata !48, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!382 = metadata !{null, metadata !8, metadata !9, metadata !383, metadata !11, metadata !53, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!384 = metadata !{null, metadata !8, metadata !9, metadata !385, metadata !11, metadata !53, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!386 = metadata !{null, metadata !8, metadata !9, metadata !387, metadata !11, metadata !53, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!388 = metadata !{null, metadata !98, metadata !2, metadata !389, metadata !4, metadata !100, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!390 = metadata !{null, metadata !1, metadata !2, metadata !391, metadata !4, metadata !60, metadata !6}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!392 = metadata !{null, metadata !8, metadata !9, metadata !393, metadata !11, metadata !53, metadata !6}
!393 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!394 = metadata !{null, metadata !44, metadata !45, metadata !395, metadata !47, metadata !48, metadata !6}
!395 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!396 = metadata !{null, metadata !8, metadata !9, metadata !397, metadata !11, metadata !53, metadata !6}
!397 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 15, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!398 = metadata !{null, metadata !8, metadata !9, metadata !399, metadata !11, metadata !53, metadata !6}
!399 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!400 = metadata !{null, metadata !8, metadata !9, metadata !401, metadata !11, metadata !53, metadata !6}
!401 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!402 = metadata !{null, metadata !8, metadata !9, metadata !403, metadata !11, metadata !53, metadata !6}
!403 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<15, 15, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!404 = metadata !{null, metadata !98, metadata !2, metadata !405, metadata !4, metadata !100, metadata !6}
!405 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!406 = metadata !{null, metadata !1, metadata !2, metadata !407, metadata !4, metadata !60, metadata !6}
!407 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!408 = metadata !{null, metadata !8, metadata !9, metadata !409, metadata !11, metadata !53, metadata !6}
!409 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!410 = metadata !{null, metadata !44, metadata !45, metadata !411, metadata !47, metadata !48, metadata !6}
!411 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!412 = metadata !{null, metadata !8, metadata !9, metadata !413, metadata !11, metadata !53, metadata !6}
!413 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 7, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!414 = metadata !{null, metadata !8, metadata !9, metadata !415, metadata !11, metadata !53, metadata !6}
!415 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!416 = metadata !{null, metadata !8, metadata !9, metadata !417, metadata !11, metadata !53, metadata !6}
!417 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!418 = metadata !{null, metadata !8, metadata !9, metadata !419, metadata !11, metadata !53, metadata !6}
!419 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<7, 7, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!420 = metadata !{null, metadata !98, metadata !2, metadata !421, metadata !4, metadata !100, metadata !6}
!421 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!422 = metadata !{null, metadata !1, metadata !2, metadata !423, metadata !4, metadata !60, metadata !6}
!423 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!424 = metadata !{null, metadata !8, metadata !9, metadata !425, metadata !11, metadata !53, metadata !6}
!425 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!426 = metadata !{null, metadata !44, metadata !45, metadata !427, metadata !47, metadata !48, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!428 = metadata !{null, metadata !44, metadata !45, metadata !429, metadata !47, metadata !48, metadata !6}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!430 = metadata !{null, metadata !44, metadata !45, metadata !431, metadata !47, metadata !48, metadata !6}
!431 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!432 = metadata !{null, metadata !44, metadata !45, metadata !433, metadata !47, metadata !48, metadata !6}
!433 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!434 = metadata !{null, metadata !44, metadata !45, metadata !435, metadata !47, metadata !48, metadata !6}
!435 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!436 = metadata !{null, metadata !44, metadata !45, metadata !437, metadata !47, metadata !48, metadata !6}
!437 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!438 = metadata !{null, metadata !44, metadata !45, metadata !439, metadata !47, metadata !48, metadata !6}
!439 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!440 = metadata !{null, metadata !44, metadata !45, metadata !441, metadata !47, metadata !48, metadata !6}
!441 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!442 = metadata !{null, metadata !443, metadata !9, metadata !444, metadata !445, metadata !446, metadata !6}
!443 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!445 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!446 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!447 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !118, metadata !6}
!448 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !449, metadata !6}
!449 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!450 = metadata !{null, metadata !1, metadata !2, metadata !451, metadata !4, metadata !79, metadata !6}
!451 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!452 = metadata !{null, metadata !8, metadata !9, metadata !453, metadata !11, metadata !53, metadata !6}
!453 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!454 = metadata !{null, metadata !8, metadata !9, metadata !455, metadata !11, metadata !53, metadata !6}
!455 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!456 = metadata !{null, metadata !8, metadata !9, metadata !457, metadata !11, metadata !17, metadata !6}
!457 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!458 = metadata !{null, metadata !8, metadata !9, metadata !459, metadata !11, metadata !17, metadata !6}
!459 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!460 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !461, metadata !6}
!461 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!462 = metadata !{null, metadata !8, metadata !9, metadata !463, metadata !11, metadata !53, metadata !6}
!463 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!464 = metadata !{null, metadata !8, metadata !9, metadata !465, metadata !11, metadata !53, metadata !6}
!465 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!466 = metadata !{null, metadata !98, metadata !2, metadata !467, metadata !468, metadata !469, metadata !6}
!467 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!468 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!469 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!470 = metadata !{metadata !471, [2 x i32]* @llvm_global_ctors_0}
!471 = metadata !{metadata !472}
!472 = metadata !{i32 0, i32 31, metadata !473}
!473 = metadata !{metadata !474}
!474 = metadata !{metadata !"llvm.global_ctors.0", metadata !475, metadata !"", i32 0, i32 31}
!475 = metadata !{metadata !476}
!476 = metadata !{i32 0, i32 1, i32 1}
!477 = metadata !{metadata !478, metadata !483}
!478 = metadata !{i32 0, i32 7, metadata !479}
!479 = metadata !{metadata !480}
!480 = metadata !{metadata !"out.V.padding.V", metadata !481, metadata !"uint8", i32 0, i32 7}
!481 = metadata !{metadata !482}
!482 = metadata !{i32 0, i32 0, i32 1}
!483 = metadata !{i32 8, i32 31, metadata !484}
!484 = metadata !{metadata !485}
!485 = metadata !{metadata !"out.V.data.V", metadata !481, metadata !"int24", i32 0, i32 23}
!486 = metadata !{metadata !487}
!487 = metadata !{i32 0, i32 31, metadata !488}
!488 = metadata !{metadata !489}
!489 = metadata !{metadata !"in.V", metadata !481, metadata !"float", i32 0, i32 31}
