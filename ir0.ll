; ModuleID = "cuda.kernel.wrapper"
target triple = "nvptx64-nvidia-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

declare i32 @"_ZN8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx"(i8** %".1", i8* %".2", i8* %".3", i64 %".4", i64 %".5", float* %".6", i64 %".7", i64 %".8", i64 %".9", i64 %".10", i8* %".11", i8* %".12", i64 %".13", i64 %".14", float* %".15", i64 %".16", i64 %".17", i64 %".18", i64 %".19", i64 %".20")

define void @"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx"(i8* %".1", i8* %".2", i64 %".3", i64 %".4", float* %".5", i64 %".6", i64 %".7", i64 %".8", i64 %".9", i8* %".10", i8* %".11", i64 %".12", i64 %".13", float* %".14", i64 %".15", i64 %".16", i64 %".17", i64 %".18", i64 %".19")
{
.21:
  %"inserted.meminfo" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} undef, i8* %".1", 0
  %"inserted.parent" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.meminfo", i8* %".2", 1
  %"inserted.nitems" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.parent", i64 %".3", 2
  %"inserted.itemsize" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.nitems", i64 %".4", 3
  %"inserted.data" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.itemsize", float* %".5", 4
  %".22" = insertvalue [2 x i64] undef, i64 %".6", 0
  %".23" = insertvalue [2 x i64] %".22", i64 %".7", 1
  %"inserted.shape" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.data", [2 x i64] %".23", 5
  %".24" = insertvalue [2 x i64] undef, i64 %".8", 0
  %".25" = insertvalue [2 x i64] %".24", i64 %".9", 1
  %"inserted.strides" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.shape", [2 x i64] %".25", 6
  %"inserted.meminfo.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} undef, i8* %".10", 0
  %"inserted.parent.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.meminfo.1", i8* %".11", 1
  %"inserted.nitems.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.parent.1", i64 %".12", 2
  %"inserted.itemsize.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.nitems.1", i64 %".13", 3
  %"inserted.data.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.itemsize.1", float* %".14", 4
  %".26" = insertvalue [2 x i64] undef, i64 %".15", 0
  %".27" = insertvalue [2 x i64] %".26", i64 %".16", 1
  %"inserted.shape.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.data.1", [2 x i64] %".27", 5
  %".28" = insertvalue [2 x i64] undef, i64 %".17", 0
  %".29" = insertvalue [2 x i64] %".28", i64 %".18", 1
  %"inserted.strides.1" = insertvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.shape.1", [2 x i64] %".29", 6
  %".30" = alloca i8*
  store i8* null, i8** %".30"
  store i8* null, i8** %".30"
  %"extracted.meminfo" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", 0
  %"extracted.parent" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", 1
  %"extracted.nitems" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", 2
  %"extracted.itemsize" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", 3
  %"extracted.data" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", 4
  %"extracted.shape" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", 5
  %".33" = extractvalue [2 x i64] %"extracted.shape", 0
  %".34" = extractvalue [2 x i64] %"extracted.shape", 1
  %"extracted.strides" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides", 6
  %".35" = extractvalue [2 x i64] %"extracted.strides", 0
  %".36" = extractvalue [2 x i64] %"extracted.strides", 1
  %"extracted.meminfo.1" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", 0
  %"extracted.parent.1" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", 1
  %"extracted.nitems.1" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", 2
  %"extracted.itemsize.1" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", 3
  %"extracted.data.1" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", 4
  %"extracted.shape.1" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", 5
  %".37" = extractvalue [2 x i64] %"extracted.shape.1", 0
  %".38" = extractvalue [2 x i64] %"extracted.shape.1", 1
  %"extracted.strides.1" = extractvalue {i8*, i8*, i64, i64, float*, [2 x i64], [2 x i64]} %"inserted.strides.1", 6
  %".39" = extractvalue [2 x i64] %"extracted.strides.1", 0
  %".40" = extractvalue [2 x i64] %"extracted.strides.1", 1
  %".41" = call i32 @"_ZN8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx"(i8** %".30", i8* %"extracted.meminfo", i8* %"extracted.parent", i64 %"extracted.nitems", i64 %"extracted.itemsize", float* %"extracted.data", i64 %".33", i64 %".34", i64 %".35", i64 %".36", i8* %"extracted.meminfo.1", i8* %"extracted.parent.1", i64 %"extracted.nitems.1", i64 %"extracted.itemsize.1", float* %"extracted.data.1", i64 %".37", i64 %".38", i64 %".39", i64 %".40", i64 %".19")
  %".42" = icmp eq i32 %".41", 0
  %".43" = icmp eq i32 %".41", -2
  %".44" = or i1 %".42", %".43"
  %".45" = xor i1 %".44", -1
  %".46" = icmp eq i32 %".41", -1
  %".47" = icmp eq i32 %".41", -3
  %".48" = icmp sge i32 %".41", 1
  %".49" = load i8*, i8** %".30"
  ret void
}

@"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx__errcode__" = global i32 0
@"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx__tidx__" = global i32 0
@"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx__ctaidx__" = global i32 0
@"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx__tidy__" = global i32 0
@"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx__ctaidy__" = global i32 0
@"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx__tidz__" = global i32 0
@"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx__ctaidz__" = global i32 0
!nvvmir.version = !{ !0 }
!nvvm.annotations = !{ !1 }
!0 = !{ i32 1, i32 8, i32 3, i32 0 }
!1 = !{ void (i8*, i8*, i64, i64, float*, i64, i64, i64, i64, i8*, i8*, i64, i64, float*, i64, i64, i64, i64, i64)* @"_ZN6cudapy8__main__13gaussian_blurB2v1B98cw51cXTLSUwv1oDHpC0oJQBDAi1SkIQh8Y8kgBqnMAkkq2yr1cHmq1spGOgoqIP8BLIKyIWoVYeFC1AEGr7qQK1AnnGtJgA_3dE5ArrayIfLi2E1C7mutable7alignedE5ArrayIfLi2E1C7mutable7alignedEx", !"kernel", i32 1 }