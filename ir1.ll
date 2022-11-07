; ModuleID = "gaussian_blur$1"
target triple = "nvptx64-nvidia-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

@"_ZN08NumbaEnv8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx" = common global i8* null
define linkonce_odr i32 @"_ZN8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx"(i8** %".ret", i8* %"arg.img_in.0", i8* %"arg.img_in.1", i64 %"arg.img_in.2", i64 %"arg.img_in.3", float* %"arg.img_in.4", i64 %"arg.img_in.5.0", i64 %"arg.img_in.5.1", i64 %"arg.img_in.6.0", i64 %"arg.img_in.6.1", i8* %"arg.img_out.0", i8* %"arg.img_out.1", i64 %"arg.img_out.2", i64 %"arg.img_out.3", float* %"arg.img_out.4", i64 %"arg.img_out.5.0", i64 %"arg.img_out.5.1", i64 %"arg.img_out.6.0", i64 %"arg.img_out.6.1", i64 %"arg.size") noinline !dbg !53
{
entry:
  %"inserted.meminfo" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} undef, i8* %"arg.img_in.0", 0
  %"inserted.parent" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.meminfo", i8* %"arg.img_in.1", 1
  %"inserted.nitems" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.parent", i64 %"arg.img_in.2", 2
  %"inserted.itemsize" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.nitems", i64 %"arg.img_in.3", 3
  %"inserted.data" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.itemsize", float* %"arg.img_in.4", 4
  %".22" = insertvalue [2 x i64] undef, i64 %"arg.img_in.5.0", 0
  %".23" = insertvalue [2 x i64] %".22", i64 %"arg.img_in.5.1", 1
  %"inserted.shape" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.data", [2 x i64] %".23", 5
  %".24" = insertvalue [2 x i64] undef, i64 %"arg.img_in.6.0", 0
  %".25" = insertvalue [2 x i64] %".24", i64 %"arg.img_in.6.1", 1
  %"inserted.strides" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.shape", [2 x i64] %".25", 6
  %"inserted.meminfo.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} undef, i8* %"arg.img_out.0", 0
  %"inserted.parent.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.meminfo.1", i8* %"arg.img_out.1", 1
  %"inserted.nitems.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.parent.1", i64 %"arg.img_out.2", 2
  %"inserted.itemsize.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.nitems.1", i64 %"arg.img_out.3", 3
  %"inserted.data.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.itemsize.1", float* %"arg.img_out.4", 4
  %".26" = insertvalue [2 x i64] undef, i64 %"arg.img_out.5.0", 0
  %".27" = insertvalue [2 x i64] %".26", i64 %"arg.img_out.5.1", 1
  %"inserted.shape.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.data.1", [2 x i64] %".27", 5
  %".28" = insertvalue [2 x i64] undef, i64 %"arg.img_out.6.0", 0
  %".29" = insertvalue [2 x i64] %".28", i64 %"arg.img_out.6.1", 1
  %"inserted.strides.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.shape.1", [2 x i64] %".29", 6
  %"img_in" = alloca {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_in"
  %"img_out" = alloca {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_out"
  %"size" = alloca i64
  store i64 0, i64* %"size"
  %"$2load_global.0" = alloca i8*
  store i8* null, i8** %"$2load_global.0"
  %"$4load_attr.1" = alloca i8*
  store i8* null, i8** %"$4load_attr.1"
  %"$6load_method.2" = alloca i8*
  store i8* null, i8** %"$6load_method.2"
  %"$const8.3" = alloca i64
  store i64 0, i64* %"$const8.3"
  %"$10call_method.4" = alloca [2 x i32]
  store [2 x i32] zeroinitializer, [2 x i32]* %"$10call_method.4"
  %"$12unpack_sequence.7" = alloca [2 x i32]
  store [2 x i32] zeroinitializer, [2 x i32]* %"$12unpack_sequence.7"
  %"$12unpack_sequence.5" = alloca i32
  store i32 0, i32* %"$12unpack_sequence.5"
  %"$12unpack_sequence.6" = alloca i32
  store i32 0, i32* %"$12unpack_sequence.6"
  %"tx" = alloca i32
  store i32 0, i32* %"tx"
  %"ty" = alloca i32
  store i32 0, i32* %"ty"
  %"value" = alloca double
  store double 0.0, double* %"value"
  %"value.3" = alloca double
  store double 0.0, double* %"value.3"
  %"radius" = alloca i64
  store i64 0, i64* %"radius"
  %"$const28.11" = alloca i64
  store i64 0, i64* %"$const28.11"
  %"$30binary_add.12" = alloca i64
  store i64 0, i64* %"$30binary_add.12"
  %"$const34.14" = alloca i64
  store i64 0, i64* %"$const34.14"
  %"$36binary_add.15" = alloca i64
  store i64 0, i64* %"$36binary_add.15"
  %"num" = alloca i64
  store i64 0, i64* %"num"
  %"$42load_global.17" = alloca i8*
  store i8* null, i8** %"$42load_global.17"
  %"$46unary_negative.19" = alloca i64
  store i64 0, i64* %"$46unary_negative.19"
  %"$const50.21" = alloca i64
  store i64 0, i64* %"$const50.21"
  %"$52binary_add.22" = alloca i64
  store i64 0, i64* %"$52binary_add.22"
  %".179" = alloca {i64, i64, i64}
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".179"
  %"$54call_function.23" = alloca {i64, i64, i64}
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %"$54call_function.23"
  %".199" = alloca {i64, i64, i64}
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".199"
  %".203" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".203"
  %".212" = alloca i64
  store i64 0, i64* %".212"
  %".215" = alloca i64
  store i64 0, i64* %".215"
  %"$56get_iter.24" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$56get_iter.24"
  %"$phi58.0" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$phi58.0"
  %".262" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %".262"
  %".265" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".265"
  %"$58for_iter.1" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %"$58for_iter.1"
  %".295" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %".295"
  %"$58for_iter.2" = alloca i64
  store i64 0, i64* %"$58for_iter.2"
  %".305" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %".305"
  %"$58for_iter.3" = alloca i1
  store i1 0, i1* %"$58for_iter.3"
  %"$phi60.1" = alloca i64
  store i64 0, i64* %"$phi60.1"
  %"value.2" = alloca double
  store double 0.0, double* %"value.2"
  %"dy" = alloca i64
  store i64 0, i64* %"dy"
  %"$62load_global.2" = alloca i8*
  store i8* null, i8** %"$62load_global.2"
  %"$66unary_negative.4" = alloca i64
  store i64 0, i64* %"$66unary_negative.4"
  %"$const70.6" = alloca i64
  store i64 0, i64* %"$const70.6"
  %"$72binary_add.7" = alloca i64
  store i64 0, i64* %"$72binary_add.7"
  %".361" = alloca {i64, i64, i64}
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".361"
  %"$74call_function.8" = alloca {i64, i64, i64}
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %"$74call_function.8"
  %".381" = alloca {i64, i64, i64}
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".381"
  %".385" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".385"
  %".394" = alloca i64
  store i64 0, i64* %".394"
  %".397" = alloca i64
  store i64 0, i64* %".397"
  %"$76get_iter.9" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$76get_iter.9"
  %"$phi78.1" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$phi78.1"
  %".444" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %".444"
  %".447" = alloca {i64*, i64, i64, i64*}
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".447"
  %"$78for_iter.2" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %"$78for_iter.2"
  %".477" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %".477"
  %"$78for_iter.3" = alloca i64
  store i64 0, i64* %"$78for_iter.3"
  %".487" = alloca {i64, i1}
  store {i64, i1} zeroinitializer, {i64, i1}* %".487"
  %"$78for_iter.4" = alloca i1
  store i1 0, i1* %"$78for_iter.4"
  %"$phi80.2" = alloca i64
  store i64 0, i64* %"$phi80.2"
  %"dx" = alloca i64
  store i64 0, i64* %"dx"
  %"x" = alloca i64
  store i64 0, i64* %"x"
  %"y" = alloca i64
  store i64 0, i64* %"y"
  %"$100load_global.10" = alloca i8*
  store i8* null, i8** %"$100load_global.10"
  %".540" = alloca double
  store double 0.0, double* %".540"
  %"$110call_function.15" = alloca double
  store double 0.0, double* %"$110call_function.15"
  %"$const112.16" = alloca double
  store double 0.0, double* %"$const112.16"
  %"$116binary_true_divide.18" = alloca double
  store double 0.0, double* %"$116binary_true_divide.18"
  %"$118binary_multiply.19" = alloca double
  store double 0.0, double* %"$118binary_multiply.19"
  %"$120inplace_add.20" = alloca double
  store double 0.0, double* %"$120inplace_add.20"
  %"value.1" = alloca double
  store double 0.0, double* %"value.1"
  %".644" = alloca {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644"
  %".683" = alloca {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683"
  %"$134binary_subscr.3" = alloca {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$134binary_subscr.3"
  %".722" = alloca {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722"
  %"$const140.5" = alloca i8*
  store i8* null, i8** %"$const140.5"
  %"$142return_value.6" = alloca i8*
  store i8* null, i8** %"$142return_value.6"
  br label %"B0"
B0:
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_in"
  call void @"llvm.dbg.declare"(metadata {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_in", metadata !77, metadata !78), !dbg !55
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_out"
  call void @"llvm.dbg.declare"(metadata {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_out", metadata !100, metadata !78), !dbg !55
  store i64 %"arg.size", i64* %"size"
  call void @"llvm.dbg.declare"(metadata i64* %"size", metadata !102, metadata !78), !dbg !55
  %".40" = load i8*, i8** %"$2load_global.0", !dbg !54
  store i8* null, i8** %"$2load_global.0", !dbg !54
  %".42" = load i8*, i8** %"$2load_global.0", !dbg !54
  %".44" = load i8*, i8** %"$4load_attr.1", !dbg !54
  store i8* null, i8** %"$4load_attr.1", !dbg !54
  %".46" = load i8*, i8** %"$2load_global.0", !dbg !54
  store i8* null, i8** %"$2load_global.0", !dbg !54
  %".48" = load i8*, i8** %"$4load_attr.1", !dbg !54
  %".50" = load i8*, i8** %"$6load_method.2", !dbg !54
  store i8* null, i8** %"$6load_method.2", !dbg !54
  %".52" = load i8*, i8** %"$4load_attr.1", !dbg !54
  store i8* null, i8** %"$4load_attr.1", !dbg !54
  %".55" = load i64, i64* %"$const8.3", !dbg !54
  store i64 2, i64* %"$const8.3", !dbg !54
  %".57" = load i64, i64* %"$const8.3", !dbg !54
  %".58" = trunc i64 2 to i32 , !dbg !54
  %".59" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"(), !dbg !54
  %".60" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"(), !dbg !54
  %".61" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"(), !dbg !54
  %".62" = mul i32 %".60", %".61", !dbg !54
  %".63" = add i32 %".62", %".59", !dbg !54
  %".64" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.y"(), !dbg !54
  %".65" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"(), !dbg !54
  %".66" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"(), !dbg !54
  %".67" = mul i32 %".65", %".66", !dbg !54
  %".68" = add i32 %".67", %".64", !dbg !54
  %".69" = insertvalue [2 x i32] undef, i32 %".63", 0 , !dbg !54
  %".70" = insertvalue [2 x i32] %".69", i32 %".68", 1 , !dbg !54
  %".72" = load [2 x i32], [2 x i32]* %"$10call_method.4", !dbg !54
  store [2 x i32] %".70", [2 x i32]* %"$10call_method.4", !dbg !54
  %".74" = load i64, i64* %"$const8.3", !dbg !54
  store i64 0, i64* %"$const8.3", !dbg !54
  %".76" = load i8*, i8** %"$6load_method.2", !dbg !54
  store i8* null, i8** %"$6load_method.2", !dbg !54
  %".78" = load [2 x i32], [2 x i32]* %"$10call_method.4", !dbg !54
  %".80" = load [2 x i32], [2 x i32]* %"$12unpack_sequence.7", !dbg !54
  store [2 x i32] %".78", [2 x i32]* %"$12unpack_sequence.7", !dbg !54
  %".82" = load [2 x i32], [2 x i32]* %"$10call_method.4", !dbg !54
  store [2 x i32] zeroinitializer, [2 x i32]* %"$10call_method.4", !dbg !54
  %".84" = load [2 x i32], [2 x i32]* %"$12unpack_sequence.7", !dbg !54
  %".85" = extractvalue [2 x i32] %".84", 0 , !dbg !54
  %".87" = load i32, i32* %"$12unpack_sequence.5", !dbg !54
  store i32 %".85", i32* %"$12unpack_sequence.5", !dbg !54
  %".89" = load [2 x i32], [2 x i32]* %"$12unpack_sequence.7", !dbg !54
  %".90" = extractvalue [2 x i32] %".89", 1 , !dbg !54
  %".92" = load i32, i32* %"$12unpack_sequence.6", !dbg !54
  store i32 %".90", i32* %"$12unpack_sequence.6", !dbg !54
  %".94" = load [2 x i32], [2 x i32]* %"$12unpack_sequence.7", !dbg !54
  store [2 x i32] zeroinitializer, [2 x i32]* %"$12unpack_sequence.7", !dbg !54
  %".96" = load i32, i32* %"$12unpack_sequence.5", !dbg !54
  call void @"llvm.dbg.declare"(metadata i32* %"tx", metadata !104, metadata !78), !dbg !54
  %".99" = load i32, i32* %"tx", !dbg !54
  store i32 %".96", i32* %"tx", !dbg !54
  %".101" = load i32, i32* %"$12unpack_sequence.5", !dbg !54
  store i32 0, i32* %"$12unpack_sequence.5", !dbg !54
  %".103" = load i32, i32* %"$12unpack_sequence.6", !dbg !54
  call void @"llvm.dbg.declare"(metadata i32* %"ty", metadata !106, metadata !78), !dbg !54
  %".106" = load i32, i32* %"ty", !dbg !54
  store i32 %".103", i32* %"ty", !dbg !54
  %".108" = load i32, i32* %"$12unpack_sequence.6", !dbg !54
  store i32 0, i32* %"$12unpack_sequence.6", !dbg !54
  call void @"llvm.dbg.declare"(metadata double* %"value", metadata !109, metadata !78), !dbg !107
  %".112" = load double, double* %"value", !dbg !107
  store double              0x0, double* %"value", !dbg !107
  %".114" = load double, double* %"value", !dbg !107
  call void @"llvm.dbg.declare"(metadata double* %"value.3", metadata !111, metadata !78), !dbg !107
  %".117" = load double, double* %"value.3", !dbg !107
  store double %".114", double* %"value.3", !dbg !107
  %".119" = load double, double* %"value", !dbg !107
  store double 0.0, double* %"value", !dbg !107
  call void @"llvm.dbg.declare"(metadata i64* %"radius", metadata !114, metadata !78), !dbg !112
  %".123" = load i64, i64* %"radius", !dbg !112
  store i64 16, i64* %"radius", !dbg !112
  %".126" = load i64, i64* %"$const28.11", !dbg !115
  store i64 1, i64* %"$const28.11", !dbg !115
  %".128" = load i64, i64* %"radius", !dbg !115
  %".129" = load i64, i64* %"$const28.11", !dbg !115
  %".130" = add nsw i64 16, 1, !dbg !115
  %".132" = load i64, i64* %"$30binary_add.12", !dbg !115
  store i64 %".130", i64* %"$30binary_add.12", !dbg !115
  %".134" = load i64, i64* %"$const28.11", !dbg !115
  store i64 0, i64* %"$const28.11", !dbg !115
  %".137" = load i64, i64* %"$const34.14", !dbg !115
  store i64 1, i64* %"$const34.14", !dbg !115
  %".139" = load i64, i64* %"radius", !dbg !115
  %".140" = load i64, i64* %"$const34.14", !dbg !115
  %".141" = add nsw i64 16, 1, !dbg !115
  %".143" = load i64, i64* %"$36binary_add.15", !dbg !115
  store i64 %".141", i64* %"$36binary_add.15", !dbg !115
  %".145" = load i64, i64* %"$const34.14", !dbg !115
  store i64 0, i64* %"$const34.14", !dbg !115
  %".147" = load i64, i64* %"$30binary_add.12", !dbg !115
  %".148" = load i64, i64* %"$36binary_add.15", !dbg !115
  %".149" = mul nsw i64 %".147", %".148", !dbg !115
  call void @"llvm.dbg.declare"(metadata i64* %"num", metadata !117, metadata !78), !dbg !115
  %".152" = load i64, i64* %"num", !dbg !115
  store i64 %".149", i64* %"num", !dbg !115
  %".154" = load i64, i64* %"$36binary_add.15", !dbg !115
  store i64 0, i64* %"$36binary_add.15", !dbg !115
  %".156" = load i64, i64* %"$30binary_add.12", !dbg !115
  store i64 0, i64* %"$30binary_add.12", !dbg !115
  %".159" = load i8*, i8** %"$42load_global.17", !dbg !118
  store i8* null, i8** %"$42load_global.17", !dbg !118
  %".161" = load i64, i64* %"radius", !dbg !118
  %".162" = sub i64 0, 16, !dbg !118
  %".164" = load i64, i64* %"$46unary_negative.19", !dbg !118
  store i64 %".162", i64* %"$46unary_negative.19", !dbg !118
  %".167" = load i64, i64* %"$const50.21", !dbg !118
  store i64 1, i64* %"$const50.21", !dbg !118
  %".169" = load i64, i64* %"radius", !dbg !118
  %".170" = load i64, i64* %"$const50.21", !dbg !118
  %".171" = add nsw i64 16, 1, !dbg !118
  %".173" = load i64, i64* %"$52binary_add.22", !dbg !118
  store i64 %".171", i64* %"$52binary_add.22", !dbg !118
  %".175" = load i64, i64* %"$const50.21", !dbg !118
  store i64 0, i64* %"$const50.21", !dbg !118
  %".177" = load i64, i64* %"$46unary_negative.19", !dbg !118
  %".178" = load i64, i64* %"$52binary_add.22", !dbg !118
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".179"
  %".182" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".179", i32 0, i32 0 , !dbg !118
  store i64 %".177", i64* %".182", !dbg !118
  %".184" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".179", i32 0, i32 1 , !dbg !118
  store i64 %".178", i64* %".184", !dbg !118
  %".186" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".179", i32 0, i32 2 , !dbg !118
  store i64 1, i64* %".186", !dbg !118
  %".188" = load {i64, i64, i64}, {i64, i64, i64}* %".179", !dbg !118
  %".190" = load {i64, i64, i64}, {i64, i64, i64}* %"$54call_function.23", !dbg !118
  store {i64, i64, i64} %".188", {i64, i64, i64}* %"$54call_function.23", !dbg !118
  %".192" = load i64, i64* %"$52binary_add.22", !dbg !118
  store i64 0, i64* %"$52binary_add.22", !dbg !118
  %".194" = load i64, i64* %"$46unary_negative.19", !dbg !118
  store i64 0, i64* %"$46unary_negative.19", !dbg !118
  %".196" = load i8*, i8** %"$42load_global.17", !dbg !118
  store i8* null, i8** %"$42load_global.17", !dbg !118
  %".198" = load {i64, i64, i64}, {i64, i64, i64}* %"$54call_function.23", !dbg !118
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".199"
  store {i64, i64, i64} %".198", {i64, i64, i64}* %".199", !dbg !118
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".203"
  %".206" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".199", i32 0, i32 0 , !dbg !118
  %".207" = load i64, i64* %".206", !dbg !118
  %".208" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".199", i32 0, i32 1 , !dbg !118
  %".209" = load i64, i64* %".208", !dbg !118
  %".210" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".199", i32 0, i32 2 , !dbg !118
  %".211" = load i64, i64* %".210", !dbg !118
  store i64 %".207", i64* %".212", !dbg !118
  %".217" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".203", i32 0, i32 0 , !dbg !118
  store i64* %".212", i64** %".217", !dbg !118
  %".219" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".203", i32 0, i32 1 , !dbg !118
  store i64 %".209", i64* %".219", !dbg !118
  %".221" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".203", i32 0, i32 2 , !dbg !118
  store i64 %".211", i64* %".221", !dbg !118
  %".223" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".203", i32 0, i32 3 , !dbg !118
  store i64* %".215", i64** %".223", !dbg !118
  %".225" = sub i64 %".209", %".207", !dbg !118
  %".226" = icmp sgt i64 %".225", 0 , !dbg !118
  %".227" = icmp sgt i64 %".211", 0 , !dbg !118
  %".228" = xor i1 %".226", %".227", !dbg !118
  %".229" = icmp eq i64 %".211", 0 , !dbg !118
  br i1 %".229", label %"B0.if", label %"B0.endif", !dbg !118, !prof !119
B58:
  %".261" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$phi58.0", !dbg !118
  store {i64, i1} zeroinitializer, {i64, i1}* %".262"
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".265"
  store {i64*, i64, i64, i64*} %".261", {i64*, i64, i64, i64*}* %".265", !dbg !118
  %".269" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".265", i32 0, i32 3 , !dbg !118
  %".270" = load i64*, i64** %".269", !dbg !118
  %".271" = load i64, i64* %".270", !dbg !118
  %".272" = icmp sgt i64 %".271", 0 , !dbg !118
  %".273" = getelementptr inbounds {i64, i1}, {i64, i1}* %".262", i32 0, i32 1 , !dbg !118
  store i1 %".272", i1* %".273", !dbg !118
  br i1 %".272", label %"B58.if", label %"B58.endif", !dbg !118
B60:
  %".324" = load i1, i1* %"$58for_iter.3", !dbg !120
  store i1 0, i1* %"$58for_iter.3", !dbg !120
  %".326" = load double, double* %"value.3", !dbg !120
  call void @"llvm.dbg.declare"(metadata double* %"value.2", metadata !122, metadata !78), !dbg !120
  %".329" = load double, double* %"value.2", !dbg !120
  store double %".326", double* %"value.2", !dbg !120
  %".331" = load double, double* %"value.3", !dbg !120
  store double 0.0, double* %"value.3", !dbg !120
  %".333" = load i64, i64* %"$phi60.1", !dbg !118
  call void @"llvm.dbg.declare"(metadata i64* %"dy", metadata !124, metadata !78), !dbg !118
  %".336" = load i64, i64* %"dy", !dbg !118
  store i64 %".333", i64* %"dy", !dbg !118
  %".338" = load i64, i64* %"$phi60.1", !dbg !118
  store i64 0, i64* %"$phi60.1", !dbg !118
  %".341" = load i8*, i8** %"$62load_global.2", !dbg !120
  store i8* null, i8** %"$62load_global.2", !dbg !120
  %".343" = load i64, i64* %"radius", !dbg !120
  %".344" = sub i64 0, 16, !dbg !120
  %".346" = load i64, i64* %"$66unary_negative.4", !dbg !120
  store i64 %".344", i64* %"$66unary_negative.4", !dbg !120
  %".349" = load i64, i64* %"$const70.6", !dbg !120
  store i64 1, i64* %"$const70.6", !dbg !120
  %".351" = load i64, i64* %"radius", !dbg !120
  %".352" = load i64, i64* %"$const70.6", !dbg !120
  %".353" = add nsw i64 16, 1, !dbg !120
  %".355" = load i64, i64* %"$72binary_add.7", !dbg !120
  store i64 %".353", i64* %"$72binary_add.7", !dbg !120
  %".357" = load i64, i64* %"$const70.6", !dbg !120
  store i64 0, i64* %"$const70.6", !dbg !120
  %".359" = load i64, i64* %"$66unary_negative.4", !dbg !120
  %".360" = load i64, i64* %"$72binary_add.7", !dbg !120
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".361"
  %".364" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".361", i32 0, i32 0 , !dbg !120
  store i64 %".359", i64* %".364", !dbg !120
  %".366" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".361", i32 0, i32 1 , !dbg !120
  store i64 %".360", i64* %".366", !dbg !120
  %".368" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".361", i32 0, i32 2 , !dbg !120
  store i64 1, i64* %".368", !dbg !120
  %".370" = load {i64, i64, i64}, {i64, i64, i64}* %".361", !dbg !120
  %".372" = load {i64, i64, i64}, {i64, i64, i64}* %"$74call_function.8", !dbg !120
  store {i64, i64, i64} %".370", {i64, i64, i64}* %"$74call_function.8", !dbg !120
  %".374" = load i64, i64* %"$72binary_add.7", !dbg !120
  store i64 0, i64* %"$72binary_add.7", !dbg !120
  %".376" = load i64, i64* %"$66unary_negative.4", !dbg !120
  store i64 0, i64* %"$66unary_negative.4", !dbg !120
  %".378" = load i8*, i8** %"$62load_global.2", !dbg !120
  store i8* null, i8** %"$62load_global.2", !dbg !120
  %".380" = load {i64, i64, i64}, {i64, i64, i64}* %"$74call_function.8", !dbg !120
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %".381"
  store {i64, i64, i64} %".380", {i64, i64, i64}* %".381", !dbg !120
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".385"
  %".388" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".381", i32 0, i32 0 , !dbg !120
  %".389" = load i64, i64* %".388", !dbg !120
  %".390" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".381", i32 0, i32 1 , !dbg !120
  %".391" = load i64, i64* %".390", !dbg !120
  %".392" = getelementptr inbounds {i64, i64, i64}, {i64, i64, i64}* %".381", i32 0, i32 2 , !dbg !120
  %".393" = load i64, i64* %".392", !dbg !120
  store i64 %".389", i64* %".394", !dbg !120
  %".399" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".385", i32 0, i32 0 , !dbg !120
  store i64* %".394", i64** %".399", !dbg !120
  %".401" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".385", i32 0, i32 1 , !dbg !120
  store i64 %".391", i64* %".401", !dbg !120
  %".403" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".385", i32 0, i32 2 , !dbg !120
  store i64 %".393", i64* %".403", !dbg !120
  %".405" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".385", i32 0, i32 3 , !dbg !120
  store i64* %".397", i64** %".405", !dbg !120
  %".407" = sub i64 %".391", %".389", !dbg !120
  %".408" = icmp sgt i64 %".407", 0 , !dbg !120
  %".409" = icmp sgt i64 %".393", 0 , !dbg !120
  %".410" = xor i1 %".408", %".409", !dbg !120
  %".411" = icmp eq i64 %".393", 0 , !dbg !120
  br i1 %".411", label %"B60.if", label %"B60.endif", !dbg !120, !prof !119
B78:
  %".443" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$phi78.1", !dbg !120
  store {i64, i1} zeroinitializer, {i64, i1}* %".444"
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %".447"
  store {i64*, i64, i64, i64*} %".443", {i64*, i64, i64, i64*}* %".447", !dbg !120
  %".451" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".447", i32 0, i32 3 , !dbg !120
  %".452" = load i64*, i64** %".451", !dbg !120
  %".453" = load i64, i64* %".452", !dbg !120
  %".454" = icmp sgt i64 %".453", 0 , !dbg !120
  %".455" = getelementptr inbounds {i64, i1}, {i64, i1}* %".444", i32 0, i32 1 , !dbg !120
  store i1 %".454", i1* %".455", !dbg !120
  br i1 %".454", label %"B78.if", label %"B78.endif", !dbg !120
B80:
  %".506" = load i1, i1* %"$78for_iter.4", !dbg !120
  store i1 0, i1* %"$78for_iter.4", !dbg !120
  %".508" = load i64, i64* %"$phi80.2", !dbg !120
  call void @"llvm.dbg.declare"(metadata i64* %"dx", metadata !126, metadata !78), !dbg !120
  %".511" = load i64, i64* %"dx", !dbg !120
  store i64 %".508", i64* %"dx", !dbg !120
  %".513" = load i64, i64* %"$phi80.2", !dbg !120
  store i64 0, i64* %"$phi80.2", !dbg !120
  %".515" = load i32, i32* %"tx", !dbg !127
  %".516" = load i64, i64* %"dx", !dbg !127
  %".517" = sext i32 %".515" to i64 , !dbg !127
  %".518" = add nsw i64 %".517", %".516", !dbg !127
  call void @"llvm.dbg.declare"(metadata i64* %"x", metadata !129, metadata !78), !dbg !127
  %".521" = load i64, i64* %"x", !dbg !127
  store i64 %".518", i64* %"x", !dbg !127
  %".523" = load i64, i64* %"dx", !dbg !127
  store i64 0, i64* %"dx", !dbg !127
  %".525" = load i32, i32* %"ty", !dbg !130
  %".526" = load i64, i64* %"dy", !dbg !130
  %".527" = sext i32 %".525" to i64 , !dbg !130
  %".528" = add nsw i64 %".527", %".526", !dbg !130
  call void @"llvm.dbg.declare"(metadata i64* %"y", metadata !132, metadata !78), !dbg !130
  %".531" = load i64, i64* %"y", !dbg !130
  store i64 %".528", i64* %"y", !dbg !130
  %".534" = load i8*, i8** %"$100load_global.10", !dbg !133
  store i8* null, i8** %"$100load_global.10", !dbg !133
  %".536" = load {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_in"
  %".537" = load i64, i64* %"x", !dbg !133
  %".538" = load i64, i64* %"y", !dbg !133
  %".539" = load i64, i64* %"size"
  store double 0.0, double* %".540", !dbg !133
  %"extracted.meminfo" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".536", 0 , !dbg !133
  %"extracted.parent" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".536", 1 , !dbg !133
  %"extracted.nitems" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".536", 2 , !dbg !133
  %"extracted.itemsize" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".536", 3 , !dbg !133
  %"extracted.data" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".536", 4 , !dbg !133
  %"extracted.shape" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".536", 5 , !dbg !133
  %".543" = extractvalue [2 x i64] %"extracted.shape", 0 , !dbg !133
  %".544" = extractvalue [2 x i64] %"extracted.shape", 1 , !dbg !133
  %"extracted.strides" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".536", 6 , !dbg !133
  %".545" = extractvalue [2 x i64] %"extracted.strides", 0 , !dbg !133
  %".546" = extractvalue [2 x i64] %"extracted.strides", 1 , !dbg !133
  %".547" = call i32 @"_ZN8__main__9get_pixelB2v2B96cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVQeqA3KMgSxYCAG5YBfXagIAE5ArrayIfLi2E1C7mutable7alignedExxx"(double* %".540", i8* %"extracted.meminfo", i8* %"extracted.parent", i64 %"extracted.nitems", i64 %"extracted.itemsize", float* %"extracted.data", i64 %".543", i64 %".544", i64 %".545", i64 %".546", i64 %".537", i64 %".538", i64 %".539"), !dbg !133
  %".548" = icmp eq i32 %".547", 0 , !dbg !133
  %".549" = icmp eq i32 %".547", -2 , !dbg !133
  %".550" = or i1 %".548", %".549", !dbg !133
  %".551" = xor i1 %".550", -1, !dbg !133
  %".552" = icmp eq i32 %".547", -1 , !dbg !133
  %".553" = icmp eq i32 %".547", -3 , !dbg !133
  %".554" = icmp sge i32 %".547", 1 , !dbg !133
  %".555" = load double, double* %".540", !dbg !133
  br i1 %".551", label %"B80.if", label %"B80.endif", !dbg !133, !prof !119
B126:
  %".613" = load i64, i64* %"dy", !dbg !120
  store i64 0, i64* %"dy", !dbg !120
  %".615" = load i64, i64* %"$phi80.2", !dbg !120
  store i64 0, i64* %"$phi80.2", !dbg !120
  %".617" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$phi78.1", !dbg !120
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$phi78.1", !dbg !120
  %".619" = load i1, i1* %"$78for_iter.4", !dbg !120
  store i1 0, i1* %"$78for_iter.4", !dbg !120
  %".621" = load double, double* %"value.2", !dbg !120
  %".622" = load double, double* %"value.3", !dbg !120
  store double %".621", double* %"value.3", !dbg !120
  %".624" = load double, double* %"value.2", !dbg !120
  store double 0.0, double* %"value.2", !dbg !120
  br label %"B58", !dbg !120
B128:
  %".627" = load i64, i64* %"size", !dbg !136
  store i64 0, i64* %"size", !dbg !136
  %".629" = load i64, i64* %"radius", !dbg !136
  store i64 0, i64* %"radius", !dbg !136
  %".631" = load i64, i64* %"num", !dbg !136
  store i64 0, i64* %"num", !dbg !136
  %".633" = load {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_in", !dbg !136
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_in", !dbg !136
  %".635" = load i64, i64* %"$phi60.1", !dbg !136
  store i64 0, i64* %"$phi60.1", !dbg !136
  %".637" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$phi58.0", !dbg !136
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$phi58.0", !dbg !136
  %".639" = load i1, i1* %"$58for_iter.3", !dbg !136
  store i1 0, i1* %"$58for_iter.3", !dbg !136
  %".641" = load {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_out"
  %".642" = load i32, i32* %"ty", !dbg !136
  %".643" = sext i32 %".642" to i64 , !dbg !136
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644"
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %".641", {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", !dbg !136
  %".648" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 5 , !dbg !136
  %".649" = getelementptr inbounds [2 x i64], [2 x i64]* %".648", i32 0, i32 0 , !dbg !136
  %".650" = load i64, i64* %".649", !dbg !136, !range !137
  %".651" = getelementptr inbounds [2 x i64], [2 x i64]* %".648", i32 0, i32 1 , !dbg !136
  %".652" = load i64, i64* %".651", !dbg !136, !range !137
  %".653" = insertvalue [2 x i64] undef, i64 %".650", 0 , !dbg !136
  %".654" = insertvalue [2 x i64] %".653", i64 %".652", 1 , !dbg !136
  %".655" = extractvalue [2 x i64] %".654", 0 , !dbg !136
  %".656" = extractvalue [2 x i64] %".654", 1 , !dbg !136
  %".657" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 6 , !dbg !136
  %".658" = load [2 x i64], [2 x i64]* %".657", !dbg !136
  %".659" = extractvalue [2 x i64] %".658", 0 , !dbg !136
  %".660" = extractvalue [2 x i64] %".658", 1 , !dbg !136
  %".661" = icmp slt i64 %".643", 0 , !dbg !136
  %".662" = add i64 %".643", %".655", !dbg !136
  %".663" = select  i1 %".661", i64 %".662", i64 %".643" , !dbg !136
  %".664" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 5 , !dbg !136
  %".665" = getelementptr inbounds [2 x i64], [2 x i64]* %".664", i32 0, i32 0 , !dbg !136
  %".666" = load i64, i64* %".665", !dbg !136, !range !137
  %".667" = getelementptr inbounds [2 x i64], [2 x i64]* %".664", i32 0, i32 1 , !dbg !136
  %".668" = load i64, i64* %".667", !dbg !136, !range !137
  %".669" = insertvalue [2 x i64] undef, i64 %".666", 0 , !dbg !136
  %".670" = insertvalue [2 x i64] %".669", i64 %".668", 1 , !dbg !136
  %".671" = extractvalue [2 x i64] %".670", 0 , !dbg !136
  %".672" = extractvalue [2 x i64] %".670", 1 , !dbg !136
  %".673" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 6 , !dbg !136
  %".674" = load [2 x i64], [2 x i64]* %".673", !dbg !136
  %".675" = extractvalue [2 x i64] %".674", 0 , !dbg !136
  %".676" = extractvalue [2 x i64] %".674", 1 , !dbg !136
  %".677" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 4 , !dbg !136
  %".678" = load float*, float** %".677", !dbg !136
  %".679" = mul i64 1, %".672", !dbg !136
  %".680" = mul i64 %".663", %".679", !dbg !136
  %".681" = add i64 0, %".680", !dbg !136
  %".682" = getelementptr float, float* %".678", i64 %".681" , !dbg !136
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683"
  %".686" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 3 , !dbg !136
  %".687" = load i64, i64* %".686", !dbg !136
  %".688" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 0 , !dbg !136
  %".689" = load i8*, i8** %".688", !dbg !136
  %".690" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %".644", i32 0, i32 1 , !dbg !136
  %".691" = load i8*, i8** %".690", !dbg !136
  %".692" = insertvalue [1 x i64] undef, i64 %".656", 0 , !dbg !136
  %".693" = insertvalue [1 x i64] undef, i64 %".660", 0 , !dbg !136
  %".694" = extractvalue [1 x i64] %".692", 0 , !dbg !136
  %".695" = mul nsw i64 1, %".694", !dbg !136
  %".696" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", i32 0, i32 5 , !dbg !136
  store [1 x i64] %".692", [1 x i64]* %".696", !dbg !136
  %".698" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", i32 0, i32 6 , !dbg !136
  store [1 x i64] %".693", [1 x i64]* %".698", !dbg !136
  %".700" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", i32 0, i32 4 , !dbg !136
  store float* %".682", float** %".700", !dbg !136
  %".702" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", i32 0, i32 3 , !dbg !136
  store i64 %".687", i64* %".702", !dbg !136
  %".704" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", i32 0, i32 0 , !dbg !136
  store i8* %".689", i8** %".704", !dbg !136
  %".706" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", i32 0, i32 1 , !dbg !136
  store i8* %".691", i8** %".706", !dbg !136
  %".708" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", i32 0, i32 2 , !dbg !136
  store i64 %".695", i64* %".708", !dbg !136
  %".710" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".683", !dbg !136
  %".712" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$134binary_subscr.3", !dbg !136
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} %".710", {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$134binary_subscr.3", !dbg !136
  %".714" = load i32, i32* %"ty", !dbg !136
  store i32 0, i32* %"ty", !dbg !136
  %".716" = load {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_out", !dbg !136
  store {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}* %"img_out", !dbg !136
  %".718" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$134binary_subscr.3", !dbg !136
  %".719" = load double, double* %"value.3", !dbg !136
  %".720" = load i32, i32* %"tx", !dbg !136
  %".721" = sext i32 %".720" to i64 , !dbg !136
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722"
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} %".718", {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722", !dbg !136
  %".726" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722", i32 0, i32 5 , !dbg !136
  %".727" = getelementptr inbounds [1 x i64], [1 x i64]* %".726", i32 0, i32 0 , !dbg !136
  %".728" = load i64, i64* %".727", !dbg !136, !range !137
  %".729" = insertvalue [1 x i64] undef, i64 %".728", 0 , !dbg !136
  %".730" = extractvalue [1 x i64] %".729", 0 , !dbg !136
  %".731" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722", i32 0, i32 6 , !dbg !136
  %".732" = load [1 x i64], [1 x i64]* %".731", !dbg !136
  %".733" = extractvalue [1 x i64] %".732", 0 , !dbg !136
  %".734" = icmp slt i64 %".721", 0 , !dbg !136
  %".735" = add i64 %".721", %".730", !dbg !136
  %".736" = select  i1 %".734", i64 %".735", i64 %".721" , !dbg !136
  %".737" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722", i32 0, i32 5 , !dbg !136
  %".738" = getelementptr inbounds [1 x i64], [1 x i64]* %".737", i32 0, i32 0 , !dbg !136
  %".739" = load i64, i64* %".738", !dbg !136, !range !137
  %".740" = insertvalue [1 x i64] undef, i64 %".739", 0 , !dbg !136
  %".741" = extractvalue [1 x i64] %".740", 0 , !dbg !136
  %".742" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722", i32 0, i32 6 , !dbg !136
  %".743" = load [1 x i64], [1 x i64]* %".742", !dbg !136
  %".744" = extractvalue [1 x i64] %".743", 0 , !dbg !136
  %".745" = getelementptr inbounds {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %".722", i32 0, i32 4 , !dbg !136
  %".746" = load float*, float** %".745", !dbg !136
  %".747" = mul i64 %".736", 1, !dbg !136
  %".748" = add i64 0, %".747", !dbg !136
  %".749" = getelementptr float, float* %".746", i64 %".748" , !dbg !136
  %".750" = fptrunc double %".719" to float , !dbg !136
  store float %".750", float* %".749", !dbg !136
  %".752" = load double, double* %"value.3", !dbg !136
  store double 0.0, double* %"value.3", !dbg !136
  %".754" = load i32, i32* %"tx", !dbg !136
  store i32 0, i32* %"tx", !dbg !136
  %".756" = load {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$134binary_subscr.3", !dbg !136
  store {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, float*, [1 x i64], [1 x i64]}* %"$134binary_subscr.3", !dbg !136
  %".759" = load i8*, i8** %"$const140.5", !dbg !136
  store i8* null, i8** %"$const140.5", !dbg !136
  %".761" = load i8*, i8** %"$const140.5", !dbg !136
  %".763" = load i8*, i8** %"$142return_value.6", !dbg !136
  store i8* %".761", i8** %"$142return_value.6", !dbg !136
  %".765" = load i8*, i8** %"$const140.5", !dbg !136
  store i8* null, i8** %"$const140.5", !dbg !136
  %".767" = load i8*, i8** %"$142return_value.6", !dbg !136
  store i8* %".767", i8** %".ret", !dbg !136
  ret i32 0, !dbg !136
B0.if:
  ret i32 1, !dbg !118
B0.endif:
  br i1 %".228", label %"B0.endif.if", label %"B0.endif.else", !dbg !118
B0.endif.if:
  %".233" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".203", i32 0, i32 3 , !dbg !118
  %".234" = load i64*, i64** %".233", !dbg !118
  store i64 0, i64* %".234", !dbg !118
  br label %"B0.endif.endif", !dbg !118
B0.endif.else:
  %".237" = srem i64 %".225", %".211", !dbg !118
  %".238" = sub i64 0, %".237", !dbg !118
  %".239" = select  i1 %".226", i64 %".237", i64 %".238" , !dbg !118
  %".240" = icmp sgt i64 %".239", 0 , !dbg !118
  %".241" = sdiv i64 %".225", %".211", !dbg !118
  %".242" = select  i1 %".240", i64 1, i64 0 , !dbg !118
  %".243" = add i64 %".241", %".242", !dbg !118
  %".244" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".203", i32 0, i32 3 , !dbg !118
  %".245" = load i64*, i64** %".244", !dbg !118
  store i64 %".243", i64* %".245", !dbg !118
  br label %"B0.endif.endif", !dbg !118
B0.endif.endif:
  %".248" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".203", !dbg !118
  %".250" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$56get_iter.24", !dbg !118
  store {i64*, i64, i64, i64*} %".248", {i64*, i64, i64, i64*}* %"$56get_iter.24", !dbg !118
  %".252" = load {i64, i64, i64}, {i64, i64, i64}* %"$54call_function.23", !dbg !118
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %"$54call_function.23", !dbg !118
  %".254" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$56get_iter.24", !dbg !118
  %".256" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$phi58.0", !dbg !118
  store {i64*, i64, i64, i64*} %".254", {i64*, i64, i64, i64*}* %"$phi58.0", !dbg !118
  %".258" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$56get_iter.24", !dbg !118
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$56get_iter.24", !dbg !118
  br label %"B58", !dbg !118
B58.if:
  %".276" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".265", i32 0, i32 0 , !dbg !118
  %".277" = load i64*, i64** %".276", !dbg !118
  %".278" = load i64, i64* %".277", !dbg !118
  %".279" = getelementptr inbounds {i64, i1}, {i64, i1}* %".262", i32 0, i32 0 , !dbg !118
  store i64 %".278", i64* %".279", !dbg !118
  %".281" = sub nsw i64 %".271", 1, !dbg !118
  store i64 %".281", i64* %".270", !dbg !118
  %".283" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".265", i32 0, i32 2 , !dbg !118
  %".284" = load i64, i64* %".283", !dbg !118
  %".285" = add i64 %".278", %".284", !dbg !118
  %".286" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".265", i32 0, i32 0 , !dbg !118
  %".287" = load i64*, i64** %".286", !dbg !118
  store i64 %".285", i64* %".287", !dbg !118
  br label %"B58.endif", !dbg !118
B58.endif:
  %".290" = load {i64, i1}, {i64, i1}* %".262", !dbg !118
  %".292" = load {i64, i1}, {i64, i1}* %"$58for_iter.1", !dbg !118
  store {i64, i1} %".290", {i64, i1}* %"$58for_iter.1", !dbg !118
  %".294" = load {i64, i1}, {i64, i1}* %"$58for_iter.1", !dbg !118
  store {i64, i1} zeroinitializer, {i64, i1}* %".295"
  store {i64, i1} %".294", {i64, i1}* %".295", !dbg !118
  %".299" = getelementptr inbounds {i64, i1}, {i64, i1}* %".295", i32 0, i32 0 , !dbg !118
  %".300" = load i64, i64* %".299", !dbg !118
  %".302" = load i64, i64* %"$58for_iter.2", !dbg !118
  store i64 %".300", i64* %"$58for_iter.2", !dbg !118
  %".304" = load {i64, i1}, {i64, i1}* %"$58for_iter.1", !dbg !118
  store {i64, i1} zeroinitializer, {i64, i1}* %".305"
  store {i64, i1} %".304", {i64, i1}* %".305", !dbg !118
  %".309" = getelementptr inbounds {i64, i1}, {i64, i1}* %".305", i32 0, i32 1 , !dbg !118
  %".310" = load i1, i1* %".309", !dbg !118
  %".312" = load i1, i1* %"$58for_iter.3", !dbg !118
  store i1 %".310", i1* %"$58for_iter.3", !dbg !118
  %".314" = load {i64, i1}, {i64, i1}* %"$58for_iter.1", !dbg !118
  store {i64, i1} zeroinitializer, {i64, i1}* %"$58for_iter.1", !dbg !118
  %".316" = load i64, i64* %"$58for_iter.2", !dbg !118
  %".318" = load i64, i64* %"$phi60.1", !dbg !118
  store i64 %".316", i64* %"$phi60.1", !dbg !118
  %".320" = load i64, i64* %"$58for_iter.2", !dbg !118
  store i64 0, i64* %"$58for_iter.2", !dbg !118
  %".322" = load i1, i1* %"$58for_iter.3", !dbg !118
  br i1 %".322", label %"B60", label %"B128", !dbg !118
B60.if:
  ret i32 2, !dbg !120
B60.endif:
  br i1 %".410", label %"B60.endif.if", label %"B60.endif.else", !dbg !120
B60.endif.if:
  %".415" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".385", i32 0, i32 3 , !dbg !120
  %".416" = load i64*, i64** %".415", !dbg !120
  store i64 0, i64* %".416", !dbg !120
  br label %"B60.endif.endif", !dbg !120
B60.endif.else:
  %".419" = srem i64 %".407", %".393", !dbg !120
  %".420" = sub i64 0, %".419", !dbg !120
  %".421" = select  i1 %".408", i64 %".419", i64 %".420" , !dbg !120
  %".422" = icmp sgt i64 %".421", 0 , !dbg !120
  %".423" = sdiv i64 %".407", %".393", !dbg !120
  %".424" = select  i1 %".422", i64 1, i64 0 , !dbg !120
  %".425" = add i64 %".423", %".424", !dbg !120
  %".426" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".385", i32 0, i32 3 , !dbg !120
  %".427" = load i64*, i64** %".426", !dbg !120
  store i64 %".425", i64* %".427", !dbg !120
  br label %"B60.endif.endif", !dbg !120
B60.endif.endif:
  %".430" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".385", !dbg !120
  %".432" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$76get_iter.9", !dbg !120
  store {i64*, i64, i64, i64*} %".430", {i64*, i64, i64, i64*}* %"$76get_iter.9", !dbg !120
  %".434" = load {i64, i64, i64}, {i64, i64, i64}* %"$74call_function.8", !dbg !120
  store {i64, i64, i64} zeroinitializer, {i64, i64, i64}* %"$74call_function.8", !dbg !120
  %".436" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$76get_iter.9", !dbg !120
  %".438" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$phi78.1", !dbg !120
  store {i64*, i64, i64, i64*} %".436", {i64*, i64, i64, i64*}* %"$phi78.1", !dbg !120
  %".440" = load {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %"$76get_iter.9", !dbg !120
  store {i64*, i64, i64, i64*} zeroinitializer, {i64*, i64, i64, i64*}* %"$76get_iter.9", !dbg !120
  br label %"B78", !dbg !120
B78.if:
  %".458" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".447", i32 0, i32 0 , !dbg !120
  %".459" = load i64*, i64** %".458", !dbg !120
  %".460" = load i64, i64* %".459", !dbg !120
  %".461" = getelementptr inbounds {i64, i1}, {i64, i1}* %".444", i32 0, i32 0 , !dbg !120
  store i64 %".460", i64* %".461", !dbg !120
  %".463" = sub nsw i64 %".453", 1, !dbg !120
  store i64 %".463", i64* %".452", !dbg !120
  %".465" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".447", i32 0, i32 2 , !dbg !120
  %".466" = load i64, i64* %".465", !dbg !120
  %".467" = add i64 %".460", %".466", !dbg !120
  %".468" = getelementptr inbounds {i64*, i64, i64, i64*}, {i64*, i64, i64, i64*}* %".447", i32 0, i32 0 , !dbg !120
  %".469" = load i64*, i64** %".468", !dbg !120
  store i64 %".467", i64* %".469", !dbg !120
  br label %"B78.endif", !dbg !120
B78.endif:
  %".472" = load {i64, i1}, {i64, i1}* %".444", !dbg !120
  %".474" = load {i64, i1}, {i64, i1}* %"$78for_iter.2", !dbg !120
  store {i64, i1} %".472", {i64, i1}* %"$78for_iter.2", !dbg !120
  %".476" = load {i64, i1}, {i64, i1}* %"$78for_iter.2", !dbg !120
  store {i64, i1} zeroinitializer, {i64, i1}* %".477"
  store {i64, i1} %".476", {i64, i1}* %".477", !dbg !120
  %".481" = getelementptr inbounds {i64, i1}, {i64, i1}* %".477", i32 0, i32 0 , !dbg !120
  %".482" = load i64, i64* %".481", !dbg !120
  %".484" = load i64, i64* %"$78for_iter.3", !dbg !120
  store i64 %".482", i64* %"$78for_iter.3", !dbg !120
  %".486" = load {i64, i1}, {i64, i1}* %"$78for_iter.2", !dbg !120
  store {i64, i1} zeroinitializer, {i64, i1}* %".487"
  store {i64, i1} %".486", {i64, i1}* %".487", !dbg !120
  %".491" = getelementptr inbounds {i64, i1}, {i64, i1}* %".487", i32 0, i32 1 , !dbg !120
  %".492" = load i1, i1* %".491", !dbg !120
  %".494" = load i1, i1* %"$78for_iter.4", !dbg !120
  store i1 %".492", i1* %"$78for_iter.4", !dbg !120
  %".496" = load {i64, i1}, {i64, i1}* %"$78for_iter.2", !dbg !120
  store {i64, i1} zeroinitializer, {i64, i1}* %"$78for_iter.2", !dbg !120
  %".498" = load i64, i64* %"$78for_iter.3", !dbg !120
  %".500" = load i64, i64* %"$phi80.2", !dbg !120
  store i64 %".498", i64* %"$phi80.2", !dbg !120
  %".502" = load i64, i64* %"$78for_iter.3", !dbg !120
  store i64 0, i64* %"$78for_iter.3", !dbg !120
  %".504" = load i1, i1* %"$78for_iter.4", !dbg !120
  br i1 %".504", label %"B80", label %"B126", !dbg !120
B80.if:
  ret i32 %".547", !dbg !133
B80.endif:
  %".559" = load double, double* %"$110call_function.15", !dbg !133
  store double %".555", double* %"$110call_function.15", !dbg !133
  %".561" = load i64, i64* %"y", !dbg !133
  store i64 0, i64* %"y", !dbg !133
  %".563" = load i64, i64* %"x", !dbg !133
  store i64 0, i64* %"x", !dbg !133
  %".565" = load i8*, i8** %"$100load_global.10", !dbg !133
  store i8* null, i8** %"$100load_global.10", !dbg !133
  %".568" = load double, double* %"$const112.16", !dbg !133
  store double 0x3ff0000000000000, double* %"$const112.16", !dbg !133
  %".570" = load double, double* %"$const112.16", !dbg !133
  %".571" = load i64, i64* %"num", !dbg !133
  %".572" = sitofp i64 %".571" to double , !dbg !133
  %".573" = fcmp oeq double %".572",              0x0 , !dbg !133
  br i1 %".573", label %"B80.endif.if", label %"B80.endif.endif", !dbg !133, !prof !119
B80.endif.if:
  ret i32 3, !dbg !133
B80.endif.endif:
  %".576" = fdiv double %".570", %".572", !dbg !133
  %".578" = load double, double* %"$116binary_true_divide.18", !dbg !133
  store double %".576", double* %"$116binary_true_divide.18", !dbg !133
  %".580" = load double, double* %"$const112.16", !dbg !133
  store double 0.0, double* %"$const112.16", !dbg !133
  %".582" = load double, double* %"$110call_function.15", !dbg !133
  %".583" = load double, double* %"$116binary_true_divide.18", !dbg !133
  %".584" = fmul double %".582", %".583", !dbg !133
  %".586" = load double, double* %"$118binary_multiply.19", !dbg !133
  store double %".584", double* %"$118binary_multiply.19", !dbg !133
  %".588" = load double, double* %"$116binary_true_divide.18", !dbg !133
  store double 0.0, double* %"$116binary_true_divide.18", !dbg !133
  %".590" = load double, double* %"$110call_function.15", !dbg !133
  store double 0.0, double* %"$110call_function.15", !dbg !133
  %".592" = load double, double* %"value.2", !dbg !133
  %".593" = load double, double* %"$118binary_multiply.19", !dbg !133
  %".594" = fadd double %".592", %".593", !dbg !133
  %".596" = load double, double* %"$120inplace_add.20", !dbg !133
  store double %".594", double* %"$120inplace_add.20", !dbg !133
  %".598" = load double, double* %"$118binary_multiply.19", !dbg !133
  store double 0.0, double* %"$118binary_multiply.19", !dbg !133
  %".600" = load double, double* %"$120inplace_add.20", !dbg !133
  call void @"llvm.dbg.declare"(metadata double* %"value.1", metadata !135, metadata !78), !dbg !133
  %".603" = load double, double* %"value.1", !dbg !133
  store double %".600", double* %"value.1", !dbg !133
  %".605" = load double, double* %"$120inplace_add.20", !dbg !133
  store double 0.0, double* %"$120inplace_add.20", !dbg !133
  %".607" = load double, double* %"value.1", !dbg !133
  %".608" = load double, double* %"value.2", !dbg !133
  store double %".607", double* %"value.2", !dbg !133
  %".610" = load double, double* %"value.1", !dbg !133
  store double 0.0, double* %"value.1", !dbg !133
  br label %"B78", !dbg !133
}

declare void @"llvm.dbg.declare"(metadata %".1", metadata %".2", metadata %".3")

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()

declare i32 @"_ZN8__main__9get_pixelB2v2B96cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVQeqA3KMgSxYCAG5YBfXagIAE5ArrayIfLi2E1C7mutable7alignedExxx"(double* %".ret", i8* %"arg.img.0", i8* %"arg.img.1", i64 %"arg.img.2", i64 %"arg.img.3", float* %"arg.img.4", i64 %"arg.img.5.0", i64 %"arg.img.5.1", i64 %"arg.img.6.0", i64 %"arg.img.6.1", i64 %"arg.x", i64 %"arg.y", i64 %"arg.size")

!nvvmir.version = !{ !0 }
!llvm.dbg.cu = !{ !2 }
!llvm.module.flags = !{ !138, !139 }
!0 = !{ i32 1, i32 8, i32 3, i32 0 }
!1 = !DIFile(directory: "/home/gmarkall/numbadev/issues/felix-schmitt", filename: "repro.py")
!2 = distinct !DICompileUnit(emissionKind: 1, file: !1, isOptimized: true, language: DW_LANG_C_plus_plus, producer: "clang (Numba)", runtimeVersion: 0)
!3 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!4 = !DIDerivedType(baseType: !3, size: 64, tag: DW_TAG_pointer_type)
!5 = !DIDerivedType(baseType: !4, size: 64, tag: DW_TAG_pointer_type)
!6 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!7 = !DIDerivedType(baseType: !6, size: 64, tag: DW_TAG_pointer_type)
!8 = !DIDerivedType(baseType: !7, name: "meminfo", offset: 0, size: 64, tag: DW_TAG_member)
!9 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!10 = !DIDerivedType(baseType: !9, size: 64, tag: DW_TAG_pointer_type)
!11 = !DIDerivedType(baseType: !10, name: "parent", offset: 64, size: 64, tag: DW_TAG_member)
!12 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!13 = !DIDerivedType(baseType: !12, name: "nitems", offset: 128, size: 64, tag: DW_TAG_member)
!14 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!15 = !DIDerivedType(baseType: !14, name: "itemsize", offset: 192, size: 64, tag: DW_TAG_member)
!16 = !DIBasicType(encoding: DW_ATE_float, name: "float32", size: 32)
!17 = !DIDerivedType(baseType: !16, size: 64, tag: DW_TAG_pointer_type)
!18 = !DIDerivedType(baseType: !17, name: "data", offset: 256, size: 64, tag: DW_TAG_member)
!19 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!20 = !DISubrange(count: 2)
!21 = !{ !20 }
!22 = !DICompositeType(baseType: !19, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!23 = !DIDerivedType(baseType: !22, name: "shape", offset: 320, size: 128, tag: DW_TAG_member)
!24 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!25 = !DICompositeType(baseType: !24, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!26 = !DIDerivedType(baseType: !25, name: "strides", offset: 448, size: 128, tag: DW_TAG_member)
!27 = !{ !8, !11, !13, !15, !18, !23, !26 }
!28 = distinct !DICompositeType(elements: !27, identifier: "{i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}", name: "array(float32, 2d, C) ({i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]})", size: 576, tag: DW_TAG_structure_type)
!29 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!30 = !DIDerivedType(baseType: !29, size: 64, tag: DW_TAG_pointer_type)
!31 = !DIDerivedType(baseType: !30, name: "meminfo", offset: 0, size: 64, tag: DW_TAG_member)
!32 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!33 = !DIDerivedType(baseType: !32, size: 64, tag: DW_TAG_pointer_type)
!34 = !DIDerivedType(baseType: !33, name: "parent", offset: 64, size: 64, tag: DW_TAG_member)
!35 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!36 = !DIDerivedType(baseType: !35, name: "nitems", offset: 128, size: 64, tag: DW_TAG_member)
!37 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!38 = !DIDerivedType(baseType: !37, name: "itemsize", offset: 192, size: 64, tag: DW_TAG_member)
!39 = !DIBasicType(encoding: DW_ATE_float, name: "float32", size: 32)
!40 = !DIDerivedType(baseType: !39, size: 64, tag: DW_TAG_pointer_type)
!41 = !DIDerivedType(baseType: !40, name: "data", offset: 256, size: 64, tag: DW_TAG_member)
!42 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!43 = !DICompositeType(baseType: !42, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!44 = !DIDerivedType(baseType: !43, name: "shape", offset: 320, size: 128, tag: DW_TAG_member)
!45 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!46 = !DICompositeType(baseType: !45, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!47 = !DIDerivedType(baseType: !46, name: "strides", offset: 448, size: 128, tag: DW_TAG_member)
!48 = !{ !31, !34, !36, !38, !41, !44, !47 }
!49 = distinct !DICompositeType(elements: !48, identifier: "{i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}", name: "array(float32, 2d, C) ({i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]})", size: 576, tag: DW_TAG_structure_type)
!50 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!51 = !{ !5, !28, !49, !50 }
!52 = !DISubroutineType(types: !51)
!53 = distinct !DISubprogram(file: !1, isDefinition: true, isLocal: false, isOptimized: true, line: 14, linkageName: "_ZN8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx", name: "gaussian_blur", scope: !1, scopeLine: 14, type: !52, unit: !2)
!54 = !DILocation(column: 1, line: 15, scope: !53)
!55 = !DILocation(column: 1, line: 14, scope: !53)
!56 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!57 = !DIDerivedType(baseType: !56, size: 64, tag: DW_TAG_pointer_type)
!58 = !DIDerivedType(baseType: !57, name: "meminfo", offset: 0, size: 64, tag: DW_TAG_member)
!59 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!60 = !DIDerivedType(baseType: !59, size: 64, tag: DW_TAG_pointer_type)
!61 = !DIDerivedType(baseType: !60, name: "parent", offset: 64, size: 64, tag: DW_TAG_member)
!62 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!63 = !DIDerivedType(baseType: !62, name: "nitems", offset: 128, size: 64, tag: DW_TAG_member)
!64 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!65 = !DIDerivedType(baseType: !64, name: "itemsize", offset: 192, size: 64, tag: DW_TAG_member)
!66 = !DIBasicType(encoding: DW_ATE_float, name: "float32", size: 32)
!67 = !DIDerivedType(baseType: !66, size: 64, tag: DW_TAG_pointer_type)
!68 = !DIDerivedType(baseType: !67, name: "data", offset: 256, size: 64, tag: DW_TAG_member)
!69 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!70 = !DICompositeType(baseType: !69, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!71 = !DIDerivedType(baseType: !70, name: "shape", offset: 320, size: 128, tag: DW_TAG_member)
!72 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!73 = !DICompositeType(baseType: !72, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!74 = !DIDerivedType(baseType: !73, name: "strides", offset: 448, size: 128, tag: DW_TAG_member)
!75 = !{ !58, !61, !63, !65, !68, !71, !74 }
!76 = distinct !DICompositeType(elements: !75, identifier: "{i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}", name: "array(float32, 2d, C) ({i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]})", size: 576, tag: DW_TAG_structure_type)
!77 = !DILocalVariable(arg: 1, file: !1, line: 14, name: "img_in", scope: !53, type: !76)
!78 = !DIExpression()
!79 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!80 = !DIDerivedType(baseType: !79, size: 64, tag: DW_TAG_pointer_type)
!81 = !DIDerivedType(baseType: !80, name: "meminfo", offset: 0, size: 64, tag: DW_TAG_member)
!82 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!83 = !DIDerivedType(baseType: !82, size: 64, tag: DW_TAG_pointer_type)
!84 = !DIDerivedType(baseType: !83, name: "parent", offset: 64, size: 64, tag: DW_TAG_member)
!85 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!86 = !DIDerivedType(baseType: !85, name: "nitems", offset: 128, size: 64, tag: DW_TAG_member)
!87 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!88 = !DIDerivedType(baseType: !87, name: "itemsize", offset: 192, size: 64, tag: DW_TAG_member)
!89 = !DIBasicType(encoding: DW_ATE_float, name: "float32", size: 32)
!90 = !DIDerivedType(baseType: !89, size: 64, tag: DW_TAG_pointer_type)
!91 = !DIDerivedType(baseType: !90, name: "data", offset: 256, size: 64, tag: DW_TAG_member)
!92 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!93 = !DICompositeType(baseType: !92, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!94 = !DIDerivedType(baseType: !93, name: "shape", offset: 320, size: 128, tag: DW_TAG_member)
!95 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i64", size: 64)
!96 = !DICompositeType(baseType: !95, elements: !21, identifier: "[2 x i64]", name: "UniTuple(int64 x 2) ([2 x i64])", size: 128, tag: DW_TAG_array_type)
!97 = !DIDerivedType(baseType: !96, name: "strides", offset: 448, size: 128, tag: DW_TAG_member)
!98 = !{ !81, !84, !86, !88, !91, !94, !97 }
!99 = distinct !DICompositeType(elements: !98, identifier: "{i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]}", name: "array(float32, 2d, C) ({i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]})", size: 576, tag: DW_TAG_structure_type)
!100 = !DILocalVariable(arg: 2, file: !1, line: 14, name: "img_out", scope: !53, type: !99)
!101 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!102 = !DILocalVariable(arg: 3, file: !1, line: 14, name: "size", scope: !53, type: !101)
!103 = !DIBasicType(encoding: DW_ATE_signed, name: "int32", size: 32)
!104 = !DILocalVariable(arg: 0, file: !1, line: 15, name: "tx", scope: !53, type: !103)
!105 = !DIBasicType(encoding: DW_ATE_signed, name: "int32", size: 32)
!106 = !DILocalVariable(arg: 0, file: !1, line: 15, name: "ty", scope: !53, type: !105)
!107 = !DILocation(column: 1, line: 17, scope: !53)
!108 = !DIBasicType(encoding: DW_ATE_float, name: "float64", size: 64)
!109 = !DILocalVariable(arg: 0, file: !1, line: 17, name: "value", scope: !53, type: !108)
!110 = !DIBasicType(encoding: DW_ATE_float, name: "float64", size: 64)
!111 = !DILocalVariable(arg: 0, file: !1, line: 17, name: "value$3", scope: !53, type: !110)
!112 = !DILocation(column: 1, line: 18, scope: !53)
!113 = !DIBasicType(encoding: DW_ATE_signed, name: "Literal[int](16)", size: 64)
!114 = !DILocalVariable(arg: 0, file: !1, line: 18, name: "radius", scope: !53, type: !113)
!115 = !DILocation(column: 1, line: 19, scope: !53)
!116 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!117 = !DILocalVariable(arg: 0, file: !1, line: 19, name: "num", scope: !53, type: !116)
!118 = !DILocation(column: 1, line: 21, scope: !53)
!119 = !{ !"branch_weights", i32 1, i32 99 }
!120 = !DILocation(column: 1, line: 22, scope: !53)
!121 = !DIBasicType(encoding: DW_ATE_float, name: "float64", size: 64)
!122 = !DILocalVariable(arg: 0, file: !1, line: 22, name: "value$2", scope: !53, type: !121)
!123 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!124 = !DILocalVariable(arg: 0, file: !1, line: 21, name: "dy", scope: !53, type: !123)
!125 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!126 = !DILocalVariable(arg: 0, file: !1, line: 22, name: "dx", scope: !53, type: !125)
!127 = !DILocation(column: 1, line: 23, scope: !53)
!128 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!129 = !DILocalVariable(arg: 0, file: !1, line: 23, name: "x", scope: !53, type: !128)
!130 = !DILocation(column: 1, line: 24, scope: !53)
!131 = !DIBasicType(encoding: DW_ATE_signed, name: "int64", size: 64)
!132 = !DILocalVariable(arg: 0, file: !1, line: 24, name: "y", scope: !53, type: !131)
!133 = !DILocation(column: 1, line: 25, scope: !53)
!134 = !DIBasicType(encoding: DW_ATE_float, name: "float64", size: 64)
!135 = !DILocalVariable(arg: 0, file: !1, line: 25, name: "value$1", scope: !53, type: !134)
!136 = !DILocation(column: 1, line: 27, scope: !53)
!137 = !{ i64 0, i64 9223372036854775807 }
!138 = !{ i32 2, !"Dwarf Version", i32 4 }
!139 = !{ i32 2, !"Debug Info Version", i32 3 }