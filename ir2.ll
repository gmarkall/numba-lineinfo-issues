; ModuleID = "get_pixel$2"
target triple = "nvptx64-nvidia-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

@"_ZN08NumbaEnv8__main__9get_pixelB2v2B96cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVQeqA3KMgSxYCAG5YBfXagIAE5ArrayIfLi2E1C7mutable7alignedExxx" = common global i8* null
define linkonce_odr i32 @"_ZN8__main__9get_pixelB2v2B96cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVQeqA3KMgSxYCAG5YBfXagIAE5ArrayIfLi2E1C7mutable7alignedExxx"(double* %".ret", i8* %"arg.img.0", i8* %"arg.img.1", i64 %"arg.img.2", i64 %"arg.img.3", float* %"arg.img.4", i64 %"arg.img.5.0", i64 %"arg.img.5.1", i64 %"arg.img.6.0", i64 %"arg.img.6.1", i64 %"arg.x", i64 %"arg.y", i64 %"arg.size") noinline !dbg !33
{
entry:
  %"inserted.meminfo" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} undef, i8* %"arg.img.0", 0
  %"inserted.parent" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.meminfo", i8* %"arg.img.1", 1
  %"inserted.nitems" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.parent", i64 %"arg.img.2", 2
  %"inserted.itemsize" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.nitems", i64 %"arg.img.3", 3
  %"inserted.data" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.itemsize", float* %"arg.img.4", 4
  %".15" = insertvalue [2 x i64] undef, i64 %"arg.img.5.0", 0
  %".16" = insertvalue [2 x i64] %".15", i64 %"arg.img.5.1", 1
  %"inserted.shape" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.data", [2 x i64] %".16", 5
  %".17" = insertvalue [2 x i64] undef, i64 %"arg.img.6.0", 0
  %".18" = insertvalue [2 x i64] %".17", i64 %"arg.img.6.1", 1
  %"inserted.strides" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.shape", [2 x i64] %".18", 6
  %"img" = alloca {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img"
  %"x" = alloca i64
  store i64 0, i64* %"x"
  %"y" = alloca i64
  store i64 0, i64* %"y"
  %"size" = alloca i64
  store i64 0, i64* %"size"
  %"$const4.1" = alloca i64
  store i64 0, i64* %"$const4.1"
  %"$6compare_op.2" = alloca i1
  store i1 0, i1* %"$6compare_op.2"
  %"bool8" = alloca i8*
  store i8* null, i8** %"bool8"
  %"$8pred" = alloca i1
  store i1 0, i1* %"$8pred"
  %"$const12.1" = alloca i64
  store i64 0, i64* %"$const12.1"
  %"$14compare_op.2" = alloca i1
  store i1 0, i1* %"$14compare_op.2"
  %"bool16" = alloca i8*
  store i8* null, i8** %"bool16"
  %"$16pred" = alloca i1
  store i1 0, i1* %"$16pred"
  %"$22compare_op.2" = alloca i1
  store i1 0, i1* %"$22compare_op.2"
  %"bool24" = alloca i8*
  store i8* null, i8** %"bool24"
  %"$24pred" = alloca i1
  store i1 0, i1* %"$24pred"
  %"$30compare_op.2" = alloca i1
  store i1 0, i1* %"$30compare_op.2"
  %"bool32" = alloca i8*
  store i8* null, i8** %"bool32"
  %"$32pred" = alloca i1
  store i1 0, i1* %"$32pred"
  %".133" = alloca {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133"
  %".172" = alloca {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172"
  %"$38binary_subscr.2" = alloca {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$38binary_subscr.2"
  %".209" = alloca {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209"
  %"$42binary_subscr.4" = alloca float
  store float 0.0, float* %"$42binary_subscr.4"
  %"$44return_value.5" = alloca double
  store double 0.0, double* %"$44return_value.5"
  %"$const46.0" = alloca double
  store double 0.0, double* %"$const46.0"
  %"$48return_value.1" = alloca double
  store double 0.0, double* %"$48return_value.1"
  br label %"B0"
B0:
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img"
  call void @"llvm.dbg.declare"(metadata {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img", metadata !57, metadata !58), !dbg !35
  store i64 %"arg.x", i64* %"x"
  call void @"llvm.dbg.declare"(metadata i64* %"x", metadata !60, metadata !58), !dbg !35
  store i64 %"arg.y", i64* %"y"
  call void @"llvm.dbg.declare"(metadata i64* %"y", metadata !62, metadata !58), !dbg !35
  store i64 %"arg.size", i64* %"size"
  call void @"llvm.dbg.declare"(metadata i64* %"size", metadata !64, metadata !58), !dbg !35
  %".32" = load i64, i64* %"$const4.1", !dbg !34
  store i64 0, i64* %"$const4.1", !dbg !34
  %".34" = load i64, i64* %"x"
  %".35" = load i64, i64* %"$const4.1", !dbg !34
  %".36" = icmp sge i64 %".34", 0 , !dbg !34
  %".38" = load i1, i1* %"$6compare_op.2", !dbg !34
  store i1 %".36", i1* %"$6compare_op.2", !dbg !34
  %".40" = load i64, i64* %"$const4.1", !dbg !34
  store i64 0, i64* %"$const4.1", !dbg !34
  call void @"llvm.dbg.declare"(metadata i8** %"bool8", metadata !67, metadata !58), !dbg !34
  %".44" = load i8*, i8** %"bool8", !dbg !34
  store i8* null, i8** %"bool8", !dbg !34
  %".46" = load i1, i1* %"$6compare_op.2", !dbg !34
  %".48" = load i1, i1* %"$8pred", !dbg !34
  store i1 %".46", i1* %"$8pred", !dbg !34
  %".50" = load i8*, i8** %"bool8", !dbg !34
  store i8* null, i8** %"bool8", !dbg !34
  %".52" = load i1, i1* %"$6compare_op.2", !dbg !34
  store i1 0, i1* %"$6compare_op.2", !dbg !34
  %".54" = load i1, i1* %"$8pred", !dbg !34
  br i1 %".54", label %"B10", label %"B46", !dbg !34
B10:
  %".56" = load i1, i1* %"$8pred", !dbg !34
  store i1 0, i1* %"$8pred", !dbg !34
  %".59" = load i64, i64* %"$const12.1", !dbg !34
  store i64 0, i64* %"$const12.1", !dbg !34
  %".61" = load i64, i64* %"y"
  %".62" = load i64, i64* %"$const12.1", !dbg !34
  %".63" = icmp sge i64 %".61", 0 , !dbg !34
  %".65" = load i1, i1* %"$14compare_op.2", !dbg !34
  store i1 %".63", i1* %"$14compare_op.2", !dbg !34
  %".67" = load i64, i64* %"$const12.1", !dbg !34
  store i64 0, i64* %"$const12.1", !dbg !34
  call void @"llvm.dbg.declare"(metadata i8** %"bool16", metadata !70, metadata !58), !dbg !34
  %".71" = load i8*, i8** %"bool16", !dbg !34
  store i8* null, i8** %"bool16", !dbg !34
  %".73" = load i1, i1* %"$14compare_op.2", !dbg !34
  %".75" = load i1, i1* %"$16pred", !dbg !34
  store i1 %".73", i1* %"$16pred", !dbg !34
  %".77" = load i8*, i8** %"bool16", !dbg !34
  store i8* null, i8** %"bool16", !dbg !34
  %".79" = load i1, i1* %"$14compare_op.2", !dbg !34
  store i1 0, i1* %"$14compare_op.2", !dbg !34
  %".81" = load i1, i1* %"$16pred", !dbg !34
  br i1 %".81", label %"B18", label %"B46", !dbg !34
B18:
  %".83" = load i1, i1* %"$16pred", !dbg !34
  store i1 0, i1* %"$16pred", !dbg !34
  %".85" = load i64, i64* %"x"
  %".86" = load i64, i64* %"size"
  %".87" = icmp slt i64 %".85", %".86" , !dbg !34
  %".89" = load i1, i1* %"$22compare_op.2", !dbg !34
  store i1 %".87", i1* %"$22compare_op.2", !dbg !34
  call void @"llvm.dbg.declare"(metadata i8** %"bool24", metadata !73, metadata !58), !dbg !34
  %".93" = load i8*, i8** %"bool24", !dbg !34
  store i8* null, i8** %"bool24", !dbg !34
  %".95" = load i1, i1* %"$22compare_op.2", !dbg !34
  %".97" = load i1, i1* %"$24pred", !dbg !34
  store i1 %".95", i1* %"$24pred", !dbg !34
  %".99" = load i8*, i8** %"bool24", !dbg !34
  store i8* null, i8** %"bool24", !dbg !34
  %".101" = load i1, i1* %"$22compare_op.2", !dbg !34
  store i1 0, i1* %"$22compare_op.2", !dbg !34
  %".103" = load i1, i1* %"$24pred", !dbg !34
  br i1 %".103", label %"B26", label %"B46", !dbg !34
B26:
  %".105" = load i1, i1* %"$24pred", !dbg !34
  store i1 0, i1* %"$24pred", !dbg !34
  %".107" = load i64, i64* %"y"
  %".108" = load i64, i64* %"size"
  %".109" = icmp slt i64 %".107", %".108" , !dbg !34
  %".111" = load i1, i1* %"$30compare_op.2", !dbg !34
  store i1 %".109", i1* %"$30compare_op.2", !dbg !34
  %".113" = load i64, i64* %"size", !dbg !34
  store i64 0, i64* %"size", !dbg !34
  call void @"llvm.dbg.declare"(metadata i8** %"bool32", metadata !76, metadata !58), !dbg !34
  %".117" = load i8*, i8** %"bool32", !dbg !34
  store i8* null, i8** %"bool32", !dbg !34
  %".119" = load i1, i1* %"$30compare_op.2", !dbg !34
  %".121" = load i1, i1* %"$32pred", !dbg !34
  store i1 %".119", i1* %"$32pred", !dbg !34
  %".123" = load i8*, i8** %"bool32", !dbg !34
  store i8* null, i8** %"bool32", !dbg !34
  %".125" = load i1, i1* %"$30compare_op.2", !dbg !34
  store i1 0, i1* %"$30compare_op.2", !dbg !34
  %".127" = load i1, i1* %"$32pred", !dbg !34
  br i1 %".127", label %"B34", label %"B46", !dbg !34
B34:
  %".129" = load i1, i1* %"$32pred", !dbg !77
  store i1 0, i1* %"$32pred", !dbg !77
  %".131" = load {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img"
  %".132" = load i64, i64* %"y"
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133"
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".131", {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", !dbg !77
  %".137" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 5 , !dbg !77
  %".138" = getelementptr inbounds [2 x i64], [2 x i64]* %".137", i32 0, i32 0 , !dbg !77
  %".139" = load i64, i64* %".138", !dbg !77, !range !78
  %".140" = getelementptr inbounds [2 x i64], [2 x i64]* %".137", i32 0, i32 1 , !dbg !77
  %".141" = load i64, i64* %".140", !dbg !77, !range !78
  %".142" = insertvalue [2 x i64] undef, i64 %".139", 0 , !dbg !77
  %".143" = insertvalue [2 x i64] %".142", i64 %".141", 1 , !dbg !77
  %".144" = extractvalue [2 x i64] %".143", 0 , !dbg !77
  %".145" = extractvalue [2 x i64] %".143", 1 , !dbg !77
  %".146" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 6 , !dbg !77
  %".147" = load [2 x i64], [2 x i64]* %".146", !dbg !77
  %".148" = extractvalue [2 x i64] %".147", 0 , !dbg !77
  %".149" = extractvalue [2 x i64] %".147", 1 , !dbg !77
  %".150" = icmp slt i64 %".132", 0 , !dbg !77
  %".151" = add i64 %".132", %".144", !dbg !77
  %".152" = select  i1 %".150", i64 %".151", i64 %".132" , !dbg !77
  %".153" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 5 , !dbg !77
  %".154" = getelementptr inbounds [2 x i64], [2 x i64]* %".153", i32 0, i32 0 , !dbg !77
  %".155" = load i64, i64* %".154", !dbg !77, !range !78
  %".156" = getelementptr inbounds [2 x i64], [2 x i64]* %".153", i32 0, i32 1 , !dbg !77
  %".157" = load i64, i64* %".156", !dbg !77, !range !78
  %".158" = insertvalue [2 x i64] undef, i64 %".155", 0 , !dbg !77
  %".159" = insertvalue [2 x i64] %".158", i64 %".157", 1 , !dbg !77
  %".160" = extractvalue [2 x i64] %".159", 0 , !dbg !77
  %".161" = extractvalue [2 x i64] %".159", 1 , !dbg !77
  %".162" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 6 , !dbg !77
  %".163" = load [2 x i64], [2 x i64]* %".162", !dbg !77
  %".164" = extractvalue [2 x i64] %".163", 0 , !dbg !77
  %".165" = extractvalue [2 x i64] %".163", 1 , !dbg !77
  %".166" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 4 , !dbg !77
  %".167" = load float*, float** %".166", !dbg !77
  %".168" = mul i64 1, %".161", !dbg !77
  %".169" = mul i64 %".152", %".168", !dbg !77
  %".170" = add i64 0, %".169", !dbg !77
  %".171" = getelementptr float, float* %".167", i64 %".170" , !dbg !77
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172"
  %".175" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 3 , !dbg !77
  %".176" = load i64, i64* %".175", !dbg !77
  %".177" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 0 , !dbg !77
  %".178" = load i8*, i8** %".177", !dbg !77
  %".179" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".133", i32 0, i32 1 , !dbg !77
  %".180" = load i8*, i8** %".179", !dbg !77
  %".181" = insertvalue [1 x i64] undef, i64 %".145", 0 , !dbg !77
  %".182" = insertvalue [1 x i64] undef, i64 %".149", 0 , !dbg !77
  %".183" = extractvalue [1 x i64] %".181", 0 , !dbg !77
  %".184" = mul nsw i64 1, %".183", !dbg !77
  %".185" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", i32 0, i32 5 , !dbg !77
  store [1 x i64] %".181", [1 x i64]* %".185", !dbg !77
  %".187" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", i32 0, i32 6 , !dbg !77
  store [1 x i64] %".182", [1 x i64]* %".187", !dbg !77
  %".189" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", i32 0, i32 4 , !dbg !77
  store float* %".171", float** %".189", !dbg !77
  %".191" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", i32 0, i32 3 , !dbg !77
  store i64 %".176", i64* %".191", !dbg !77
  %".193" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", i32 0, i32 0 , !dbg !77
  store i8* %".178", i8** %".193", !dbg !77
  %".195" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", i32 0, i32 1 , !dbg !77
  store i8* %".180", i8** %".195", !dbg !77
  %".197" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", i32 0, i32 2 , !dbg !77
  store i64 %".184", i64* %".197", !dbg !77
  %".199" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".172", !dbg !77
  %".201" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$38binary_subscr.2", !dbg !77
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} %".199", {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$38binary_subscr.2", !dbg !77
  %".203" = load i64, i64* %"y", !dbg !77
  store i64 0, i64* %"y", !dbg !77
  %".205" = load {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img", !dbg !77
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img", !dbg !77
  %".207" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$38binary_subscr.2", !dbg !77
  %".208" = load i64, i64* %"x"
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209"
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} %".207", {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209", !dbg !77
  %".213" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209", i32 0, i32 5 , !dbg !77
  %".214" = getelementptr inbounds [1 x i64], [1 x i64]* %".213", i32 0, i32 0 , !dbg !77
  %".215" = load i64, i64* %".214", !dbg !77, !range !78
  %".216" = insertvalue [1 x i64] undef, i64 %".215", 0 , !dbg !77
  %".217" = extractvalue [1 x i64] %".216", 0 , !dbg !77
  %".218" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209", i32 0, i32 6 , !dbg !77
  %".219" = load [1 x i64], [1 x i64]* %".218", !dbg !77
  %".220" = extractvalue [1 x i64] %".219", 0 , !dbg !77
  %".221" = icmp slt i64 %".208", 0 , !dbg !77
  %".222" = add i64 %".208", %".217", !dbg !77
  %".223" = select  i1 %".221", i64 %".222", i64 %".208" , !dbg !77
  %".224" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209", i32 0, i32 5 , !dbg !77
  %".225" = getelementptr inbounds [1 x i64], [1 x i64]* %".224", i32 0, i32 0 , !dbg !77
  %".226" = load i64, i64* %".225", !dbg !77, !range !78
  %".227" = insertvalue [1 x i64] undef, i64 %".226", 0 , !dbg !77
  %".228" = extractvalue [1 x i64] %".227", 0 , !dbg !77
  %".229" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209", i32 0, i32 6 , !dbg !77
  %".230" = load [1 x i64], [1 x i64]* %".229", !dbg !77
  %".231" = extractvalue [1 x i64] %".230", 0 , !dbg !77
  %".232" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".209", i32 0, i32 4 , !dbg !77
  %".233" = load float*, float** %".232", !dbg !77
  %".234" = mul i64 %".223", 1, !dbg !77
  %".235" = add i64 0, %".234", !dbg !77
  %".236" = getelementptr float, float* %".233", i64 %".235" , !dbg !77
  %".237" = load float, float* %".236", !dbg !77
  %".239" = load float, float* %"$42binary_subscr.4", !dbg !77
  store float %".237", float* %"$42binary_subscr.4", !dbg !77
  %".241" = load i64, i64* %"x", !dbg !77
  store i64 0, i64* %"x", !dbg !77
  %".243" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$38binary_subscr.2", !dbg !77
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$38binary_subscr.2", !dbg !77
  %".245" = load float, float* %"$42binary_subscr.4", !dbg !77
  %".246" = fpext float %".245" to double , !dbg !77
  %".248" = load double, double* %"$44return_value.5", !dbg !77
  store double %".246", double* %"$44return_value.5", !dbg !77
  %".250" = load float, float* %"$42binary_subscr.4", !dbg !77
  store float 0.0, float* %"$42binary_subscr.4", !dbg !77
  %".252" = load double, double* %"$44return_value.5", !dbg !77
  store double %".252", double* %".ret", !dbg !77
  ret i32 0, !dbg !77
B46:
  %".255" = load i64, i64* %"y", !dbg !79
  store i64 0, i64* %"y", !dbg !79
  %".257" = load i64, i64* %"x", !dbg !79
  store i64 0, i64* %"x", !dbg !79
  %".259" = load i64, i64* %"size", !dbg !79
  store i64 0, i64* %"size", !dbg !79
  %".261" = load {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img", !dbg !79
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img", !dbg !79
  %".263" = load i1, i1* %"$8pred", !dbg !79
  store i1 0, i1* %"$8pred", !dbg !79
  %".265" = load i1, i1* %"$32pred", !dbg !79
  store i1 0, i1* %"$32pred", !dbg !79
  %".267" = load i1, i1* %"$24pred", !dbg !79
  store i1 0, i1* %"$24pred", !dbg !79
  %".269" = load i1, i1* %"$16pred", !dbg !79
  store i1 0, i1* %"$16pred", !dbg !79
  %".272" = load double, double* %"$const46.0", !dbg !79
  store double              0x0, double* %"$const46.0", !dbg !79
  %".274" = load double, double* %"$const46.0", !dbg !79
  %".276" = load double, double* %"$48return_value.1", !dbg !79
  store double %".274", double* %"$48return_value.1", !dbg !79
  %".278" = load double, double* %"$const46.0", !dbg !79
  store double 0.0, double* %"$const46.0", !dbg !79
  %".280" = load double, double* %"$48return_value.1", !dbg !79
  store double %".280", double* %".ret", !dbg !79
  ret i32 0, !dbg !79
}

declare void @"llvm.dbg.declare"(metadata %".1", metadata %".2", metadata %".3")

!nvvmir.version = !{ !0 }
!llvm.dbg.cu = !{ !2 }
!llvm.module.flags = !{ !80, !81 }
!0 = !{ i32 1, i32 8, i32 3, i32 0 }
!1 = !DIFile(directory: "/home/gmarkall/numbadev/issues/felix-schmitt", filename: "repro.py")
!2 = distinct !DICompileUnit(emissionKind: 1, file: !1, isOptimized: true, language: DW_LANG_C_plus_plus, producer: "clang (Numba)", runtimeVersion: 0)
!3 = !DIBasicType(encoding: DW_ATE_float, name: "double", size: 64)
!4 = !DIDerivedType(baseType: !3, size: 64, tag: DW_TAG_pointer_type)
!5 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!6 = !DIDerivedType(baseType: !5, size: 64, tag: DW_TAG_pointer_type)
!7 = !DIDerivedType(baseType: !6, name: "meminfo", offset: 0, size: 64, tag: DW_TAG_member)
!8 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!9 = !DIDerivedType(baseType: !8, size: 64, tag: DW_TAG_pointer_type)
!10 = !DIDerivedType(baseType: !9, name: "parent", offset: 64, size: 64, tag: DW_TAG_member)
!11 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!12 = !DIDerivedType(baseType: !11, name: "nitems", offset: 128, size: 64, tag: DW_TAG_member)
!13 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!14 = !DIDerivedType(baseType: !13, name: "itemsize", offset: 192, size: 64, tag: DW_TAG_member)
!15 = !DIBasicType(encoding: DW_ATE_float, name: "float32", size: 32)
!16 = !DIDerivedType(baseType: !15, size: 64, tag: DW_TAG_pointer_type)
!17 = !DIDerivedType(baseType: !16, name: "data", offset: 256, size: 64, tag: DW_TAG_member)
!18 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!19 = !DISubrange(count: 2)
!20 = !{ !19 }
!21 = !DICompositeType(baseType: !18, elements: !20, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!22 = !DIDerivedType(baseType: !21, name: "shape", offset: 320, size: 128, tag: DW_TAG_member)
!23 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!24 = !DICompositeType(baseType: !23, elements: !20, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!25 = !DIDerivedType(baseType: !24, name: "strides", offset: 448, size: 128, tag: DW_TAG_member)
!26 = !{ !7, !10, !12, !14, !17, !22, !25 }
!27 = distinct !DICompositeType(elements: !26, identifier: "{i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}", name: "array(float32, 2d, C) ({i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]})", size: 576, tag: DW_TAG_structure_type)
!28 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!29 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!30 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!31 = !{ !4, !27, !28, !29, !30 }
!32 = !DISubroutineType(types: !31)
!33 = distinct !DISubprogram(file: !1, isDefinition: true, isLocal: false, isOptimized: true, line: 6, linkageName: "_ZN8__main__9get_pixelB2v2B96cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVQeqA3KMgSxYCAG5YBfXagIAE5ArrayIfLi2E1C7mutable7alignedExxx", name: "get_pixel", scope: !1, scopeLine: 6, type: !32, unit: !2)
!34 = !DILocation(column: 1, line: 7, scope: !33)
!35 = !DILocation(column: 1, line: 6, scope: !33)
!36 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!37 = !DIDerivedType(baseType: !36, size: 64, tag: DW_TAG_pointer_type)
!38 = !DIDerivedType(baseType: !37, name: "meminfo", offset: 0, size: 64, tag: DW_TAG_member)
!39 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!40 = !DIDerivedType(baseType: !39, size: 64, tag: DW_TAG_pointer_type)
!41 = !DIDerivedType(baseType: !40, name: "parent", offset: 64, size: 64, tag: DW_TAG_member)
!42 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!43 = !DIDerivedType(baseType: !42, name: "nitems", offset: 128, size: 64, tag: DW_TAG_member)
!44 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!45 = !DIDerivedType(baseType: !44, name: "itemsize", offset: 192, size: 64, tag: DW_TAG_member)
!46 = !DIBasicType(encoding: DW_ATE_float, name: "float32", size: 32)
!47 = !DIDerivedType(baseType: !46, size: 64, tag: DW_TAG_pointer_type)
!48 = !DIDerivedType(baseType: !47, name: "data", offset: 256, size: 64, tag: DW_TAG_member)
!49 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!50 = !DICompositeType(baseType: !49, elements: !20, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!51 = !DIDerivedType(baseType: !50, name: "shape", offset: 320, size: 128, tag: DW_TAG_member)
!52 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!53 = !DICompositeType(baseType: !52, elements: !20, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!54 = !DIDerivedType(baseType: !53, name: "strides", offset: 448, size: 128, tag: DW_TAG_member)
!55 = !{ !38, !41, !43, !45, !48, !51, !54 }
!56 = distinct !DICompositeType(elements: !55, identifier: "{i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}", name: "array(float32, 2d, C) ({i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]})", size: 576, tag: DW_TAG_structure_type)
!57 = !DILocalVariable(arg: 1, file: !1, line: 6, name: "img", scope: !33, type: !56)
!58 = !DIExpression()
!59 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!60 = !DILocalVariable(arg: 2, file: !1, line: 6, name: "x", scope: !33, type: !59)
!61 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!62 = !DILocalVariable(arg: 3, file: !1, line: 6, name: "y", scope: !33, type: !61)
!63 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!64 = !DILocalVariable(arg: 4, file: !1, line: 6, name: "size", scope: !33, type: !63)
!65 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!66 = !DIDerivedType(baseType: !65, size: 64, tag: DW_TAG_pointer_type)
!67 = !DILocalVariable(arg: 0, file: !1, line: 7, name: "bool8", scope: !33, type: !66)
!68 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!69 = !DIDerivedType(baseType: !68, size: 64, tag: DW_TAG_pointer_type)
!70 = !DILocalVariable(arg: 0, file: !1, line: 7, name: "bool16", scope: !33, type: !69)
!71 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!72 = !DIDerivedType(baseType: !71, size: 64, tag: DW_TAG_pointer_type)
!73 = !DILocalVariable(arg: 0, file: !1, line: 7, name: "bool24", scope: !33, type: !72)
!74 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!75 = !DIDerivedType(baseType: !74, size: 64, tag: DW_TAG_pointer_type)
!76 = !DILocalVariable(arg: 0, file: !1, line: 7, name: "bool32", scope: !33, type: !75)
!77 = !DILocation(column: 1, line: 8, scope: !33)
!78 = !{ i64 0, i64 9223372036854775807 }
!79 = !DILocation(column: 1, line: 10, scope: !33)
!80 = !{ i32 2, !"Dwarf Version", i32 4 }
!81 = !{ i32 2, !"Debug Info Version", i32 3 }