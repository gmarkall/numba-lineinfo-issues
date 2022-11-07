; ModuleID = "<lambda>$1"
target triple = "nvptx64-nvidia-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

@"_ZN08NumbaEnv8__main__12_3clambda_3eB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE" = common global i8* null
define i32 @"_ZN8__main__12_3clambda_3eB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE"(i8** %".ret") noinline !dbg !8
{
entry:
  %"$const2.0" = alloca i8*
  store i8* null, i8** %"$const2.0"
  %"$4return_value.1" = alloca i8*
  store i8* null, i8** %"$4return_value.1"
  br label %"B0"
B0:
  %".4" = load i8*, i8** %"$const2.0", !dbg !9
  store i8* null, i8** %"$const2.0", !dbg !9
  %".6" = load i8*, i8** %"$const2.0", !dbg !9
  %".8" = load i8*, i8** %"$4return_value.1", !dbg !9
  store i8* %".6", i8** %"$4return_value.1", !dbg !9
  %".10" = load i8*, i8** %"$const2.0", !dbg !9
  store i8* null, i8** %"$const2.0", !dbg !9
  %".12" = load i8*, i8** %"$4return_value.1", !dbg !9
  store i8* %".12", i8** %".ret", !dbg !9
  ret i32 0, !dbg !9
}

!nvvmir.version = !{ !0 }
!llvm.dbg.cu = !{ !2 }
!llvm.module.flags = !{ !10, !11 }
!0 = !{ i32 1, i32 8, i32 3, i32 0 }
!1 = !DIFile(directory: "/home/gmarkall/numbadev/issues/numba-lineinfo-issues", filename: "simpler.py")
!2 = distinct !DICompileUnit(emissionKind: 1, file: !1, isOptimized: true, language: DW_LANG_C_plus_plus, producer: "clang (Numba)", runtimeVersion: 0)
!3 = !DIBasicType(encoding: DW_ATE_unsigned, name: "i8", size: 8)
!4 = !DIDerivedType(baseType: !3, size: 64, tag: DW_TAG_pointer_type)
!5 = !DIDerivedType(baseType: !4, size: 64, tag: DW_TAG_pointer_type)
!6 = !{ !5 }
!7 = !DISubroutineType(types: !6)
!8 = distinct !DISubprogram(file: !1, isDefinition: true, isLocal: false, isOptimized: true, line: 4, linkageName: "_ZN8__main__12_3clambda_3eB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE", name: "<lambda>", scope: !1, scopeLine: 4, type: !7, unit: !2)
!9 = !DILocation(column: 1, line: 3, scope: !8)
!10 = !{ i32 2, !"Dwarf Version", i32 4 }
!11 = !{ i32 2, !"Debug Info Version", i32 3 }

