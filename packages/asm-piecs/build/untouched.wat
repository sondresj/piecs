(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f32_i32_=>_i32 (func (param i32 i32 f32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $src/BitMask/mod32 i32 (i32.const 31))
 (global $src/Query/ArrayU32_ID i32 (i32.const 3))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $src/Archetype/Archetype i32 (i32.const 4))
 (global $src/BitMask/BitMask i32 (i32.const 10))
 (global $src/index/InsideWorld i32 (i32.const 18))
 (global $src/index/World i32 (i32.const 19))
 (global $src/Query/Every i32 (i32.const 24))
 (global $src/Query/Some i32 (i32.const 25))
 (global $src/Query/Not i32 (i32.const 26))
 (global $src/Query/Query i32 (i32.const 14))
 (global $src/SparseSet/SparseSet i32 (i32.const 6))
 (global $src/Vector/Vector i32 (i32.const 8))
 (global $~lib/rt/__rtti_base i32 (i32.const 4560))
 (global $~lib/memory/__data_end i32 (i32.const 4780))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 21164))
 (global $~lib/memory/__heap_base i32 (i32.const 21164))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 80) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 108) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 172) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 220) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 252) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 380) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 444) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 512) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 544) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 572) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 636) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1036) "\1c\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2092) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 2188) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2220) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2252) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 2300) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 2348) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 2412) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00S\00p\00a\00r\00s\00e\00S\00e\00t\00:\00 \00I\00n\00d\00e\00x\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2476) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00b\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00.\00 \00C\00h\00e\00c\00k\00 \00S\00p\00a\00r\00s\00e\00S\00e\00t\00.\00l\00e\00n\00g\00t\00h\00 \00>\00 \00i\00n\00d\00e\00x\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2604) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\80\t\00\00\00\00\00\00\c0\t\00\00")
 (data (i32.const 2636) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00s\00r\00c\00/\00S\00p\00a\00r\00s\00e\00S\00e\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2700) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00V\00e\00c\00t\00o\00r\00:\00 \00I\00n\00d\00e\00x\00 \00")
 (data (i32.const 2748) "l\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\\\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00.\00 \00C\00h\00e\00c\00k\00 \00i\00n\00d\00e\00x\00 \00<\00 \00V\00e\00c\00t\00o\00r\00.\00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 2860) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\a0\n\00\00\00\00\00\00\d0\n\00\00")
 (data (i32.const 2892) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00s\00r\00c\00/\00V\00e\00c\00t\00o\00r\00.\00t\00s\00\00\00")
 (data (i32.const 2940) "l\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00X\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00.\00 \00C\00h\00e\00c\00k\00 \00i\00n\00d\00e\00x\00 \00<\00 \00V\00e\00c\00t\00o\00r\00.\00s\00i\00z\00e\00\00\00\00\00")
 (data (i32.const 3052) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\a0\n\00\00\00\00\00\00\90\0b\00\00")
 (data (i32.const 3084) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\a0\n\00\00\00\00\00\00\90\0b\00\00")
 (data (i32.const 3116) "\ac\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\8e\00\00\00V\00e\00c\00t\00o\00r\00:\00 \00C\00a\00n\00n\00o\00t\00 \00p\00o\00p\00 \00e\00m\00p\00t\00y\00 \00v\00e\00c\00t\00o\00r\00.\00 \00C\00h\00e\00c\00k\00 \00V\00e\00c\00t\00o\00r\00.\00l\00e\00n\00g\00t\00h\00 \00>\00 \000\00 \00b\00e\00f\00o\00r\00e\00 \00p\00o\00p\00p\00i\00n\00g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3292) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\002\00\00\00S\00p\00a\00r\00s\00e\00S\00e\00t\00:\00 \00I\00n\00t\00e\00r\00n\00a\00l\00 \00e\00r\00r\00o\00r\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3372) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3500) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3564) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 3612) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3644) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3676) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00N\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3740) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00s\00r\00c\00/\00i\00n\00d\00e\00x\00.\00t\00s\00\00\00\00\00")
 (data (i32.const 3788) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00E\00n\00t\00i\00t\00y\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3836) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3900) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\e0\0e\00\00\00\00\00\00\10\0f\00\00")
 (data (i32.const 3932) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00A\00t\00t\00e\00m\00p\00t\00e\00d\00 \00t\00o\00 \00r\00e\00b\00u\00i\00l\00d\00 \00w\00o\00r\00l\00d\00,\00 \00t\00h\00i\00s\00 \00i\00s\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4060) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00 \00i\00s\00 \00d\00e\00l\00e\00t\00e\00d\00\00\00\00\00\00\00")
 (data (i32.const 4108) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\e0\0e\00\00\00\00\00\00\f0\0f\00\00")
 (data (i32.const 4140) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\e0\0e\00\00\00\00\00\00\10\0f\00\00")
 (data (i32.const 4172) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\e0\0e\00\00\00\00\00\00\f0\0f\00\00")
 (data (i32.const 4204) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\e0\0e\00\00\00\00\00\00\10\0f\00\00")
 (data (i32.const 4236) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00<\00\00\00Q\00u\00e\00r\00y\00:\00 \00E\00m\00p\00t\00y\00 \00b\00l\00o\00c\00k\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d\00")
 (data (i32.const 4316) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00s\00r\00c\00/\00Q\00u\00e\00r\00y\00.\00t\00s\00\00\00\00\00")
 (data (i32.const 4364) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\80\t\00\00\00\00\00\00\c0\t\00\00")
 (data (i32.const 4396) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\0c\00\00\00\a0\n\00\00\00\00\00\00\d0\n\00\00")
 (data (i32.const 4428) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data (i32.const 4492) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data (i32.const 4560) "\1b\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\07\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\01\01\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04A\00\00\00\00\00\00\10A\82\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\0f\00\00\00")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $src/BitMask/BitMask#toString~anonymous|0)
 (export "Archetype" (global $src/Archetype/Archetype))
 (export "BitMask" (global $src/BitMask/BitMask))
 (export "InsideWorld" (global $src/index/InsideWorld))
 (export "World" (global $src/index/World))
 (export "Every" (global $src/Query/Every))
 (export "Some" (global $src/Query/Some))
 (export "Not" (global $src/Query/Not))
 (export "ArrayU32_ID" (global $src/Query/ArrayU32_ID))
 (export "Query" (global $src/Query/Query))
 (export "SparseSet" (global $src/SparseSet/SparseSet))
 (export "Vector" (global $src/Vector/Vector))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "Archetype#constructor" (func $export:src/Archetype/Archetype#constructor))
 (export "Archetype#get:mask" (func $export:src/Archetype/Archetype#get:mask))
 (export "Archetype#set:mask" (func $export:src/Archetype/Archetype#set:mask))
 (export "Archetype#get:id" (func $export:src/Archetype/Archetype#get:id))
 (export "Archetype#get:length" (func $export:src/Archetype/Archetype#get:length))
 (export "Archetype#__get" (func $export:src/Archetype/Archetype#__get))
 (export "Archetype#__uget" (func $export:src/Archetype/Archetype#__uget))
 (export "Archetype#hasComponent" (func $export:src/Archetype/Archetype#hasComponent))
 (export "Archetype#hasEntity" (func $export:src/Archetype/Archetype#hasEntity))
 (export "Archetype#addEntity" (func $export:src/Archetype/Archetype#addEntity))
 (export "Archetype#removeEntity" (func $export:src/Archetype/Archetype#removeEntity))
 (export "Archetype#get:entities" (func $export:src/Archetype/Archetype#get:entities))
 (export "Archetype#transform" (func $export:src/Archetype/Archetype#transform))
 (export "BitMask#get:_mask" (func $export:src/BitMask/BitMask#get:_mask))
 (export "BitMask#set:_mask" (func $export:src/BitMask/BitMask#set:_mask))
 (export "BitMask#get:maxValue" (func $export:src/BitMask/BitMask#get:maxValue))
 (export "BitMask#set:maxValue" (func $export:src/BitMask/BitMask#set:maxValue))
 (export "BitMask#constructor" (func $export:src/BitMask/BitMask#constructor))
 (export "BitMask#has" (func $export:src/BitMask/BitMask#has))
 (export "BitMask#__grow" (func $export:src/BitMask/BitMask#__grow))
 (export "BitMask#xor" (func $export:src/BitMask/BitMask#xor))
 (export "BitMask#or" (func $export:src/BitMask/BitMask#or))
 (export "BitMask#and" (func $export:src/BitMask/BitMask#and))
 (export "BitMask#not" (func $export:src/BitMask/BitMask#not))
 (export "BitMask#union" (func $export:src/BitMask/BitMask#union))
 (export "BitMask#intersection" (func $export:src/BitMask/BitMask#intersection))
 (export "BitMask#symmetrictDifference" (func $export:src/BitMask/BitMask#symmetrictDifference))
 (export "BitMask#isSuperSetOf" (func $export:src/BitMask/BitMask#isSuperSetOf))
 (export "BitMask#toString" (func $export:src/BitMask/BitMask#toString))
 (export "BitMask#copy" (func $export:src/BitMask/BitMask#copy))
 (export "InsideWorld#hasEntity" (func $export:src/index/InsideWorld#hasEntity))
 (export "InsideWorld#createEntity" (func $export:src/index/InsideWorld#createEntity))
 (export "InsideWorld#deleteEntity" (func $export:src/index/InsideWorld#deleteEntity))
 (export "InsideWorld#defer" (func $export:src/index/InsideWorld#defer))
 (export "InsideWorld#constructor" (func $export:src/index/InsideWorld#constructor))
 (export "World#hasEntity" (func $export:src/index/World#hasEntity))
 (export "World#createEntity" (func $export:src/index/World#createEntity))
 (export "World#deleteEntity" (func $export:src/index/World#deleteEntity))
 (export "World#defer" (func $export:src/index/World#defer))
 (export "World#constructor" (func $export:src/index/World#constructor))
 (export "World#_executeDeferredActions" (func $export:src/index/World#_executeDeferredActions))
 (export "World#registerSystem" (func $export:src/index/World#registerSystem))
 (export "World#init" (func $export:src/index/World#init))
 (export "World#update" (func $export:src/index/World#update))
 (export "World#hasComponent" (func $export:src/index/World#hasComponent))
 (export "World#setComponent" (func $export:src/index/World#setComponent))
 (export "World#removeComponent" (func $export:src/index/World#removeComponent))
 (export "Every#get:mask" (func $export:src/Query/QueryMask#get:mask))
 (export "Every#constructor" (func $export:src/Query/Every#constructor))
 (export "Every#test" (func $export:src/Query/Every#test))
 (export "Some#get:mask" (func $export:src/Query/QueryMask#get:mask))
 (export "Some#constructor" (func $export:src/Query/Some#constructor))
 (export "Some#test" (func $export:src/Query/Some#test))
 (export "Not#get:mask" (func $export:src/Query/QueryMask#get:mask))
 (export "Not#constructor" (func $export:src/Query/Not#constructor))
 (export "Not#test" (func $export:src/Query/Not#test))
 (export "every" (func $export:src/Query/every))
 (export "some" (func $export:src/Query/some))
 (export "not" (func $export:src/Query/not))
 (export "or" (func $export:src/Query/or))
 (export "and" (func $export:src/Query/and))
 (export "Query#constructor" (func $export:src/Query/Query#constructor))
 (export "Query#tryAdd" (func $export:src/Query/Query#tryAdd))
 (export "Query#get:length" (func $export:src/Query/Query#get:length))
 (export "Query#__get" (func $export:src/Query/Query#__get))
 (export "Query#__uget" (func $export:src/Query/Query#__uget))
 (export "createQuery" (func $export:src/Query/createQuery))
 (export "SparseSet#get:length" (func $export:src/SparseSet/SparseSet#get:length))
 (export "SparseSet#constructor" (func $export:src/SparseSet/SparseSet#constructor))
 (export "SparseSet#get:values" (func $export:src/SparseSet/SparseSet#get:values))
 (export "SparseSet#has" (func $export:src/SparseSet/SparseSet#has))
 (export "SparseSet#get" (func $export:src/SparseSet/SparseSet#get))
 (export "SparseSet#uget" (func $export:src/SparseSet/SparseSet#uget))
 (export "SparseSet#add" (func $export:src/SparseSet/SparseSet#add))
 (export "SparseSet#pop" (func $export:src/SparseSet/SparseSet#pop))
 (export "SparseSet#delete" (func $export:src/SparseSet/SparseSet#delete))
 (export "Vector#get:length" (func $export:src/Vector/Vector#get:length))
 (export "Vector#constructor" (func $export:src/Vector/Vector#constructor))
 (export "Vector#get:size" (func $export:src/Vector/Vector#get:size))
 (export "Vector#get:sparse" (func $export:src/Vector/Vector#get:sparse))
 (export "Vector#__get" (func $export:src/Vector/Vector#__get))
 (export "Vector#__set" (func $export:src/Vector/Vector#__set))
 (export "Vector#__uget" (func $export:src/Vector/Vector#__uget))
 (export "Vector#__uset" (func $export:src/Vector/Vector#__uset))
 (export "Vector#push" (func $export:src/Vector/Vector#push))
 (export "Vector#pop" (func $export:src/Vector/Vector#pop))
 (export "Vector#subArray" (func $export:src/Vector/Vector#subArray))
 (start $~start)
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 128
   i32.const 192
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 32
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $src/Archetype/Archetype#set:mask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/typedarray/Uint32Array#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   local.get $3
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $6
   i32.const 31
   local.get $6
   i32.clz
   i32.sub
   local.set $4
   local.get $6
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $8
  local.get $1
  i32.load offset=8
  local.set $9
  local.get $8
  if
   local.get $8
   local.get $9
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $9
  if
   local.get $9
   local.get $8
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $6
  local.get $5
  local.set $7
  local.get $10
  local.get $6
  i32.const 4
  i32.shl
  local.get $7
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $6
   local.get $9
   local.set $7
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=96
   local.get $9
   i32.eqz
   if
    local.get $0
    local.set $6
    local.get $4
    local.set $7
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $0
    local.set $7
    local.get $4
    local.set $11
    local.get $6
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $6
    local.set $10
    local.get $7
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $6
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.add
   local.get $3
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $4
   local.get $4
   i32.load
   local.set $5
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.sub
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $6
   i32.const 1
   drop
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 592
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/removeBlock
   local.get $3
   local.set $1
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  i32.const 1
  drop
  local.get $7
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 4
   i32.shr_u
   local.set $9
  else
   local.get $7
   local.tee $3
   i32.const 1073741820
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_u
   select
   local.set $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $8
   local.get $3
   local.get $8
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  i32.const 1
  drop
  local.get $8
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $9
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $10
  local.get $8
  local.set $3
  local.get $9
  local.set $6
  local.get $10
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $8
  local.set $10
  local.get $9
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $10
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $8
  local.set $12
  local.get $0
  local.set $3
  local.get $8
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  local.set $10
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $10
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 592
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 592
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-loop|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i64.const 200
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 464
   i32.const 592
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 592
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870910
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 592
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 592
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $6
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   i32.const 4
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   i32.const 12
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 8
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   i32.const 28
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 24
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 20
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 16
   i32.sub
   local.get $8
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 464
   i32.const 32
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $3
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 636
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 636
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 636
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 636
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 1056
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 1056
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  i32.popcnt
  i32.const 1
  i32.eq
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-loop|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2112
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $6
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2112
    local.get $1
    local.get $6
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $6
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/U32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/utoa32
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $src/Archetype/Archetype#set:id (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/Archetype/Archetype#set:_transformations (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $src/Archetype/Archetype#set:_entities (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/Vector/Vector#set:_size (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $src/Vector/Vector#set:_array (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/Vector/Vector#set:_growFactor (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=16
 )
 (func $src/Vector/Vector#set:_sparse (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=12
 )
 (func $src/Vector/Vector#set:_length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $src/SparseSet/SparseSet#set:_dense (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/SparseSet/SparseSet#set:_indices (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/Archetype/Archetype#get:_transformations (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/Archetype/Archetype#get:_entities (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/Archetype/Archetype#get:mask (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $src/Archetype/Archetype#get:id (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $0
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $1
  call $~lib/util/string/joinStringArray
  return
 )
 (func $~lib/typedarray/Uint32Array#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $src/Vector/Vector#grow (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  i32.lt_u
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  loop $while-continue|0
   local.get $1
   local.get $0
   i32.load offset=4
   i32.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $0
    i32.load offset=4
    f32.convert_i32_u
    local.get $0
    f32.load offset=16
    f32.mul
    f64.promote_f32
    local.set $3
    local.get $3
    f64.ceil
    i32.trunc_f64_u
    call $src/Vector/Vector#set:_size
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.const 0
  local.get $0
  i32.load offset=4
  call $~lib/typedarray/Uint32Array#constructor
  call $src/Vector/Vector#set:_array
  local.get $0
  i32.load
  i32.load offset=4
  local.get $2
  i32.load offset=4
  local.get $2
  call $~lib/typedarray/Uint32Array#get:length
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint32Array#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $src/Vector/Vector#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  call $src/Vector/Vector#grow
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store
 )
 (func $src/Vector/Vector#get:_length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $src/BitMask/BitMask#set:_size (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $src/BitMask/BitMask#set:_mask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/BitMask/BitMask#set:maxValue (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $src/BitMask/BitMask#__grow (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $src/BitMask/BitMask#set:maxValue
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $0
   local.get $1
   f64.convert_i32_u
   f64.const 32
   f64.div
   local.set $3
   local.get $3
   f64.ceil
   i32.trunc_f64_u
   call $src/BitMask/BitMask#set:_size
   local.get $0
   i32.const 0
   local.get $0
   i32.load offset=4
   call $~lib/typedarray/Uint32Array#constructor
   call $src/BitMask/BitMask#set:_mask
   local.get $0
   i32.load
   i32.load offset=4
   local.get $2
   i32.load offset=4
   local.get $2
   call $~lib/typedarray/Uint32Array#get:length
   call $~lib/memory/memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 1
  drop
  block $~lib/util/hash/hashStr|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 0
   i32.eq
   if
    i32.const 0
    br $~lib/util/hash/hashStr|inlined.0
   end
   local.get $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $2
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   local.get $3
   i32.const 16
   i32.ge_u
   if
    i32.const 0
    i32.const -1640531535
    i32.add
    i32.const -2048144777
    i32.add
    local.set $5
    i32.const 0
    i32.const -2048144777
    i32.add
    local.set $6
    i32.const 0
    local.set $7
    i32.const 0
    i32.const -1640531535
    i32.sub
    local.set $8
    local.get $3
    local.get $4
    i32.add
    i32.const 16
    i32.sub
    local.set $9
    loop $while-continue|0
     local.get $4
     local.get $9
     i32.le_u
     local.set $10
     local.get $10
     if
      local.get $5
      local.set $12
      local.get $4
      i32.load
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $6
      local.set $12
      local.get $4
      i32.load offset=4
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $7
      local.set $12
      local.get $4
      i32.load offset=8
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $7
      local.get $8
      local.set $12
      local.get $4
      i32.load offset=12
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $8
      local.get $4
      i32.const 16
      i32.add
      local.set $4
      br $while-continue|0
     end
    end
    local.get $2
    local.get $5
    i32.const 1
    i32.rotl
    local.get $6
    i32.const 7
    i32.rotl
    i32.add
    local.get $7
    i32.const 12
    i32.rotl
    i32.add
    local.get $8
    i32.const 18
    i32.rotl
    i32.add
    i32.add
    local.set $2
   else
    local.get $2
    i32.const 0
    i32.const 374761393
    i32.add
    i32.add
    local.set $2
   end
   local.get $1
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $9
   loop $while-continue|1
    local.get $4
    local.get $9
    i32.le_u
    local.set $8
    local.get $8
    if
     local.get $2
     local.get $4
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     local.set $2
     local.get $2
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $4
     i32.const 4
     i32.add
     local.set $4
     br $while-continue|1
    end
   end
   local.get $1
   local.get $3
   i32.add
   local.set $9
   loop $while-continue|2
    local.get $4
    local.get $9
    i32.lt_u
    local.set $8
    local.get $8
    if
     local.get $2
     local.get $4
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     local.set $2
     local.get $2
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
   i32.const -2048144777
   i32.mul
   local.set $2
   local.get $2
   local.get $2
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
   i32.const -1028477379
   i32.mul
   local.set $2
   local.get $2
   local.get $2
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
  end
  return
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 3520
   i32.const 3584
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=4
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $1
  local.get $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 2272
    i32.const 2320
    i32.const 18
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $5
   local.get $1
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $6
   local.get $3
   if
    local.get $4
    i32.const 1
    i32.shl
    local.tee $7
    i32.const 1073741820
    local.tee $8
    local.get $7
    local.get $8
    i32.lt_u
    select
    local.tee $8
    local.get $6
    local.tee $7
    local.get $8
    local.get $7
    i32.gt_u
    select
    local.set $6
   end
   local.get $5
   local.get $6
   call $~lib/rt/itcms/__renew
   local.set $8
   local.get $8
   local.get $4
   i32.add
   i32.const 0
   local.get $6
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $8
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $8
    i32.store offset=4
    local.get $0
    local.get $8
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $6
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 2320
    i32.const 123
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<src/Archetype/Archetype>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<src/Archetype/Archetype>#__uset
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.load
     local.tee $12
     i32.store offset=8
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:value
     local.get $12
     call $~lib/util/hash/HASH<~lib/string/String>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/array/Array<src/Query/Query>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<src/Query/Query>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<src/Query/QueryMask>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<src/Query/QueryMask>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $src/Query/QueryMask#test (param $0 i32) (param $1 i32) (result i32)
  unreachable
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<src/Archetype/Archetype>#set:length_
  local.get $3
 )
 (func $src/BitMask/BitMask#get:_mask (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/BitMask/BitMask#get:_size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/BitMask/BitMask#get:maxValue (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $src/index/InsideWorld#hasEntity (param $0 i32) (param $1 i32) (result i32)
  unreachable
 )
 (func $src/index/InsideWorld#createEntity (param $0 i32) (result i32)
  unreachable
 )
 (func $src/index/InsideWorld#deleteEntity (param $0 i32) (param $1 i32)
  unreachable
 )
 (func $src/index/InsideWorld#defer (param $0 i32) (param $1 i32)
  unreachable
 )
 (func $src/index/World#set:archetypes (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/index/World#set:entityArchetype (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $3
 )
 (func $src/index/World#set:entitiesDeleted (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/index/World#set:nextEntityId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $src/index/World#set:nextComponentId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $src/index/World#set:systems (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $src/index/World#set:queries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/Query/Query>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/Query/Query>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<src/Query/Query>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<src/Query/Query>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $src/index/World#set:deferredActions (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/index/World#set:blankArchetype (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/index/World#set:initialized (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=36
 )
 (func $~lib/array/Array<%28%29=>void>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<%28%29=>void>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<%28%29=>void>#set:length_
  local.get $3
 )
 (func $src/index/World#get:archetypes (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/index/World#get:entityArchetype (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/index/World#get:entitiesDeleted (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $src/index/World#get:nextEntityId (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $src/index/World#get:nextComponentId (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $src/index/World#get:systems (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $src/index/World#get:queries (param $0 i32) (result i32)
  local.get $0
  i32.load offset=24
 )
 (func $src/index/World#get:deferredActions (param $0 i32) (result i32)
  local.get $0
  i32.load offset=28
 )
 (func $src/index/World#get:blankArchetype (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
 )
 (func $src/index/World#get:initialized (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=36
 )
 (func $~lib/array/Array<%28%29=>void>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<%28%29=>void>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<%28%29=>void>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  call $~lib/array/Array<%28%29=>void>#set:length_
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:length_
  local.get $3
 )
 (func $~lib/array/Array<src/Query/Query>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<src/Query/Query>#set:length_
  local.get $3
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#set:length_
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $src/Query/QueryMask#set:mask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/Query/QueryMask#get:mask (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/Query/Every#test (param $0 i32) (param $1 i32) (result i32)
  i32.const 1
 )
 (func $~lib/array/Array<u32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 128
   i32.const 2320
   i32.const 107
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/rt/__instanceof (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=12
  local.set $2
  global.get $~lib/rt/__rtti_base
  local.set $3
  local.get $2
  local.get $3
  i32.load
  i32.le_u
  if
   loop $do-loop|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    i32.const 4
    i32.add
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $do-loop|0
   end
  end
  i32.const 0
 )
 (func $src/Query/Query#set:_queryMasks (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/Query/Query#set:_archetypes (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/Query/Query#get:_archetypes (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/Query/Query#get:_queryMasks (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/Query/createQuery (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $src/Query/Query#constructor
 )
 (func $src/SparseSet/SparseSet#get:_dense (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/SparseSet/SparseSet#get:_indices (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/SparseSet/SparseSet#get:values (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/Vector/Vector#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $src/Vector/Vector#get:_array (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/Vector/Vector#get:_size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/Vector/Vector#get:_sparse (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=12
 )
 (func $src/Vector/Vector#get:_growFactor (param $0 i32) (result f32)
  local.get $0
  f32.load offset=16
 )
 (func $src/Vector/Vector#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/Vector/Vector#get:sparse (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=12
  i32.const 0
  i32.ne
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $1
   local.get $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 4448
    i32.const 32
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 4512
   i32.const 32
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  (local $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    local.set $0
    local.get $0
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   local.set $0
   local.get $0
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $src/Query/QueryMask#test@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.set $2
      local.get $2
      i32.const 24
      i32.eq
      br_if $case0
      local.get $2
      i32.const 25
      i32.eq
      br_if $case1
      local.get $2
      i32.const 26
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     local.get $1
     call $src/Query/Every#test
     return
    end
    local.get $0
    local.get $1
    call $src/Query/Some#test
    return
   end
   local.get $0
   local.get $1
   call $src/Query/Not#test
   return
  end
  unreachable
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 128
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2272
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3392
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3520
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 464
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4448
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4512
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1056
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2112
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<u32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__visit
 )
 (func $src/Archetype/Archetype~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<src/Archetype/Archetype>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__visit
 )
 (func $src/SparseSet/SparseSet~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/RelativeIndexable/RelativeIndexable<u32>~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/RelativeIndexable/RelativeIndexable<u32>~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $src/Vector/Vector~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/RelativeIndexable/RelativeIndexable<u32>~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/typedarray/Uint32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $src/BitMask/BitMask~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String>#__visit (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String>#__visit
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 1
     drop
     local.get $6
     i32.load
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
     i32.const 1
     drop
     local.get $6
     i32.load offset=4
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#__visit
 )
 (func $src/Query/Query~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/Query/QueryMask~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/Query/QueryMask>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<src/Query/QueryMask>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<src/Query/QueryMask>#__visit
 )
 (func $~lib/array/Array<src/Query/Query>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<src/Query/Query>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<src/Query/Query>#__visit
 )
 (func $src/index/World~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/index/InsideWorld~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=24
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=28
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=32
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/index/InsideWorld~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#__visit
 )
 (func $~lib/array/Array<%28%29=>void>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<%28%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<%28%29=>void>#__visit
 )
 (func $~lib/array/Array<i32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/function/Function<%28%29=>void>#__visit (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>void>#__visit
 )
 (func $src/Query/Every~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/Query/QueryMask~visit
 )
 (func $src/Query/Some~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/Query/QueryMask~visit
 )
 (func $src/Query/Not~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/Query/QueryMask~visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $src/Query/Not
    block $src/Query/Some
     block $src/Query/Every
      block $~lib/function/Function<%28%29=>void>
       block $~lib/array/Array<i32>
        block $~lib/array/Array<%28%29=>void>
         block $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>
          block $src/index/World
           block $src/index/InsideWorld
            block $~lib/array/Array<src/Query/Query>
             block $~lib/array/Array<src/Query/QueryMask>
              block $src/Query/QueryMask
               block $src/Query/Query
                block $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>
                 block $~lib/staticarray/StaticArray<~lib/string/String>
                  block $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String>
                   block $src/BitMask/BitMask
                    block $~lib/typedarray/Uint32Array
                     block $src/Vector/Vector
                      block $src/RelativeIndexable/RelativeIndexable<u32>
                       block $src/SparseSet/SparseSet
                        block $~lib/array/Array<src/Archetype/Archetype>
                         block $src/Archetype/Archetype
                          block $~lib/array/Array<u32>
                           block $~lib/arraybuffer/ArrayBufferView
                            block $~lib/string/String
                             block $~lib/arraybuffer/ArrayBuffer
                              local.get $0
                              i32.const 8
                              i32.sub
                              i32.load
                              br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/array/Array<u32> $src/Archetype/Archetype $~lib/array/Array<src/Archetype/Archetype> $src/SparseSet/SparseSet $src/RelativeIndexable/RelativeIndexable<u32> $src/Vector/Vector $~lib/typedarray/Uint32Array $src/BitMask/BitMask $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/map/Map<~lib/string/String,src/Archetype/Archetype> $src/Query/Query $src/Query/QueryMask $~lib/array/Array<src/Query/QueryMask> $~lib/array/Array<src/Query/Query> $src/index/InsideWorld $src/index/World $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void> $~lib/array/Array<%28%29=>void> $~lib/array/Array<i32> $~lib/function/Function<%28%29=>void> $src/Query/Every $src/Query/Some $src/Query/Not $invalid
                             end
                             return
                            end
                            return
                           end
                           local.get $0
                           local.get $1
                           call $~lib/arraybuffer/ArrayBufferView~visit
                           return
                          end
                          local.get $0
                          local.get $1
                          call $~lib/array/Array<u32>~visit
                          return
                         end
                         local.get $0
                         local.get $1
                         call $src/Archetype/Archetype~visit
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/array/Array<src/Archetype/Archetype>~visit
                        return
                       end
                       local.get $0
                       local.get $1
                       call $src/SparseSet/SparseSet~visit
                       return
                      end
                      return
                     end
                     local.get $0
                     local.get $1
                     call $src/Vector/Vector~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/typedarray/Uint32Array~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $src/BitMask/BitMask~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String>~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/staticarray/StaticArray<~lib/string/String>~visit
                 return
                end
                local.get $0
                local.get $1
                call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>~visit
                return
               end
               local.get $0
               local.get $1
               call $src/Query/Query~visit
               return
              end
              local.get $0
              local.get $1
              call $src/Query/QueryMask~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<src/Query/QueryMask>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<src/Query/Query>~visit
            return
           end
           return
          end
          local.get $0
          local.get $1
          call $src/index/World~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<%28%29=>void>~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<i32>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/function/Function<%28%29=>void>~visit
      return
     end
     local.get $0
     local.get $1
     call $src/Query/Every~visit
     return
    end
    local.get $0
    local.get $1
    call $src/Query/Some~visit
    return
   end
   local.get $0
   local.get $1
   call $src/Query/Not~visit
   return
  end
  unreachable
 )
 (func $~start
  i32.const 80
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 512
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 544
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $src/BitMask/BitMask#toString~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.const 16
  call $~lib/number/U32#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/string/String#concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/BitMask/BitMask#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/typedarray/Uint32Array#get:length
  i32.const 0
  i32.eq
  if
   i32.const 240
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $0
  i32.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 2240
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 2208
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/typedarray/Uint32Array#reduceRight<~lib/string/String>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/Vector/Vector#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  local.set $2
  local.get $2
  i32.load8_u offset=12
  i32.const 0
  i32.ne
  i32.const 0
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $0
   i32.load offset=8
   i32.lt_u
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $2
   i32.store
   i32.const 2880
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 1
   local.get $2
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 2880
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 2208
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2912
   i32.const 51
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.lt_u
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $2
   i32.store
   i32.const 3072
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 1
   local.get $2
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 3072
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 2208
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2912
   i32.const 52
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/Archetype/Archetype#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $1
  local.set $2
  local.get $2
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.load offset=8
  i32.lt_u
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $4
   i32.store offset=4
   i32.const 2624
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   i32.const 1
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 2624
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   i32.const 2208
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2656
   i32.const 35
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  local.get $2
  call $src/Vector/Vector#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/Vector/Vector#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.load offset=4
  i32.lt_u
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $2
   i32.store
   i32.const 3104
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 1
   local.get $2
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 3104
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 2208
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2912
   i32.const 65
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/Archetype/Archetype#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $1
  local.set $2
  local.get $3
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $2
  call $src/Vector/Vector#__uget
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/Archetype/Archetype#hasComponent (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $src/BitMask/BitMask#has|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $1
   local.set $2
   local.get $2
   i32.const 5
   i32.shr_u
   local.set $4
   local.get $4
   local.get $3
   i32.load offset=4
   i32.ge_u
   if
    i32.const 0
    br $src/BitMask/BitMask#has|inlined.0
   end
   local.get $3
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $4
   call $~lib/typedarray/Uint32Array#__uget
   local.get $2
   global.get $src/BitMask/mod32
   i32.and
   i32.shr_u
   i32.const 1
   i32.and
  end
  i32.const 0
  i32.ne
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/Archetype/Archetype#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $1
  local.set $2
  local.get $2
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $2
   i32.eq
  else
   i32.const 0
  end
  i32.const 0
  i32.ne
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/Archetype/Archetype#addEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $1
  local.set $2
  local.get $3
  local.set $5
  local.get $2
  local.set $4
  local.get $4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.load offset=4
  local.tee $6
  i32.store offset=4
  local.get $6
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $5
   i32.load offset=4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   local.get $4
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load
   local.tee $6
   i32.store offset=4
   local.get $6
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   local.get $5
   i32.load offset=4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=12
   local.get $7
   local.get $4
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $4
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   local.get $3
   i32.load offset=4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   local.get $2
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $4
   i32.store offset=16
   local.get $2
   local.set $6
   local.get $4
   local.get $4
   i32.load offset=8
   call $src/Vector/Vector#grow
   local.get $4
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=12
   local.get $7
   local.get $4
   local.get $4
   i32.load offset=8
   local.tee $5
   i32.const 1
   i32.add
   call $src/Vector/Vector#set:_length
   local.get $5
   local.get $6
   call $~lib/typedarray/Uint32Array#__uset
   local.get $4
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#__uset
  end
  local.get $3
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/Archetype/Archetype#removeEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $1
  local.set $2
  local.get $3
  local.set $5
  local.get $2
  local.set $4
  local.get $4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.load offset=4
  local.tee $6
  i32.store offset=4
  local.get $6
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $5
   i32.load offset=4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   local.get $4
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load
   local.tee $6
   i32.store offset=4
   local.get $6
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   local.get $5
   i32.load offset=4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=12
   local.get $7
   local.get $4
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $4
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $6
   i32.store offset=4
   local.get $6
   i32.load offset=8
   i32.eqz
   if
    i32.const 3136
    i32.const 2912
    i32.const 84
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   local.get $6
   local.tee $5
   local.get $6
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#set:_length
   local.get $5
   call $src/Vector/Vector#get:_length
   call $~lib/typedarray/Uint32Array#__uget
   local.tee $6
   if (result i32)
    local.get $6
   else
    i32.const 3312
    i32.const 2656
    i32.const 62
    i32.const 26
    call $~lib/builtins/abort
    unreachable
   end
   local.set $6
   local.get $6
   local.get $2
   i32.ne
   if
    local.get $3
    i32.load offset=4
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $7
    local.get $2
    call $src/Vector/Vector#__uget
    local.set $5
    local.get $3
    i32.load
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $7
    local.get $5
    local.get $6
    call $src/Vector/Vector#__uset
    local.get $3
    i32.load offset=4
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $7
    local.get $6
    local.get $5
    call $src/Vector/Vector#__uset
   end
  end
  local.get $3
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/BitMask/BitMask#copy (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/typedarray/Uint32Array#get:length
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.store offset=4
  local.get $1
  i32.load
  i32.load offset=4
  local.get $0
  i32.load
  i32.load offset=4
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/typedarray/Uint32Array#get:length
  call $~lib/memory/memory.copy
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/BitMask/BitMask#xor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.const 5
  i32.shr_u
  local.set $2
  local.get $0
  local.get $2
  call $src/BitMask/BitMask#__grow
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $2
  call $~lib/typedarray/Uint32Array#__uget
  i32.const 1
  local.get $1
  global.get $src/BitMask/mod32
  i32.and
  i32.shl
  i32.xor
  call $~lib/typedarray/Uint32Array#__uset
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/Query/Query#tryAdd (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $2
   call $~lib/array/Array<src/Query/QueryMask>#get:length
   i32.lt_s
   local.set $4
   local.get $4
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $3
    call $~lib/array/Array<src/Query/QueryMask>#__uget
    local.tee $5
    i32.store offset=4
    local.get $5
    local.get $1
    i32.load offset=8
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $src/Query/QueryMask#test@virtual
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    local.get $3
    drop
    br $for-loop|0
   end
  end
  local.get $0
  i32.load
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/Archetype/Archetype#transform (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.load
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  if
   local.get $0
   i32.load
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   local.get $1
   call $~lib/array/Array<src/Archetype/Archetype>#__uget
   local.set $9
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $src/BitMask/BitMask#copy
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $1
  call $src/BitMask/BitMask#xor
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $4
  call $src/BitMask/BitMask#toString
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#get
  local.tee $5
  i32.store offset=12
  local.get $5
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $4
   call $src/Archetype/Archetype#constructor
   local.tee $5
   i32.store offset=12
   local.get $5
   i32.load
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   local.get $1
   local.get $0
   call $~lib/array/Array<src/Archetype/Archetype>#__set
   local.get $2
   local.get $5
   i32.load offset=12
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=4
   local.get $9
   local.get $5
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set
   drop
   i32.const 0
   local.set $6
   loop $for-loop|0
    local.get $6
    local.get $3
    call $~lib/array/Array<src/Query/Query>#get:length
    i32.lt_s
    local.set $7
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $6
     call $~lib/array/Array<src/Query/Query>#__uget
     local.tee $8
     i32.store offset=16
     local.get $8
     local.get $5
     call $src/Query/Query#tryAdd
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|0
    end
   end
  end
  local.get $0
  i32.load
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $1
  local.get $5
  call $~lib/array/Array<src/Archetype/Archetype>#__set
  local.get $5
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/BitMask/BitMask#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 5
  i32.shr_u
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=4
  i32.ge_u
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  call $~lib/typedarray/Uint32Array#__uget
  local.get $1
  global.get $src/BitMask/mod32
  i32.and
  i32.shr_u
  i32.const 1
  i32.and
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/BitMask/BitMask#or (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.const 5
  i32.shr_u
  local.set $2
  local.get $0
  local.get $2
  call $src/BitMask/BitMask#__grow
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $2
  call $~lib/typedarray/Uint32Array#__uget
  i32.const 1
  local.get $1
  global.get $src/BitMask/mod32
  i32.and
  i32.shl
  i32.or
  call $~lib/typedarray/Uint32Array#__uset
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/BitMask/BitMask#and (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.const 5
  i32.shr_u
  local.set $2
  local.get $0
  local.get $2
  call $src/BitMask/BitMask#__grow
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $2
  call $~lib/typedarray/Uint32Array#__uget
  i32.const 1
  local.get $1
  global.get $src/BitMask/mod32
  i32.and
  i32.shl
  i32.and
  call $~lib/typedarray/Uint32Array#__uset
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/BitMask/BitMask#not (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  i32.load offset=8
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/typedarray/Uint32Array#get:length
   i32.lt_u
   local.set $3
   local.get $3
   if
    local.get $0
    i32.load
    i32.load offset=4
    local.get $2
    i32.add
    i32.load
    local.set $4
    local.get $1
    i32.load
    i32.load offset=4
    local.get $4
    i32.const -1
    i32.xor
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/BitMask/BitMask#union (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=8
  f64.convert_i32_u
  local.set $3
  local.get $1
  i32.load offset=8
  f64.convert_i32_u
  local.set $2
  local.get $3
  local.get $2
  f64.max
  i32.trunc_f64_u
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  call $src/BitMask/BitMask#constructor
  local.tee $5
  i32.store
  i32.const 0
  local.set $6
  loop $for-loop|0
   local.get $6
   local.get $1
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=4
   local.get $10
   call $~lib/typedarray/Uint32Array#get:length
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $0
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    i32.load
    local.set $8
    local.get $1
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    i32.load
    local.set $9
    local.get $5
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    local.get $8
    local.get $9
    i32.or
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $5
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/BitMask/BitMask#intersection (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=8
  f64.convert_i32_u
  local.set $3
  local.get $1
  i32.load offset=8
  f64.convert_i32_u
  local.set $2
  local.get $3
  local.get $2
  f64.min
  i32.trunc_f64_u
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  call $src/BitMask/BitMask#constructor
  local.tee $5
  i32.store
  i32.const 0
  local.set $6
  loop $for-loop|0
   local.get $6
   local.get $5
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=4
   local.get $10
   call $~lib/typedarray/Uint32Array#get:length
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $0
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    i32.load
    local.set $8
    local.get $1
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    i32.load
    local.set $9
    local.get $5
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    local.get $8
    local.get $9
    i32.and
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $5
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/BitMask/BitMask#symmetrictDifference (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=8
  f64.convert_i32_u
  local.set $3
  local.get $1
  i32.load offset=8
  f64.convert_i32_u
  local.set $2
  local.get $3
  local.get $2
  f64.min
  i32.trunc_f64_u
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  call $src/BitMask/BitMask#constructor
  local.tee $5
  i32.store
  i32.const 0
  local.set $6
  loop $for-loop|0
   local.get $6
   local.get $5
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=4
   local.get $10
   call $~lib/typedarray/Uint32Array#get:length
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $0
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    i32.load
    local.set $8
    local.get $1
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    i32.load
    local.set $9
    local.get $5
    i32.load
    i32.load offset=4
    local.get $6
    i32.add
    local.get $8
    local.get $9
    i32.xor
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $5
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/BitMask/BitMask#isSuperSetOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.load
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/typedarray/Uint32Array#get:length
  local.get $0
  i32.load
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/typedarray/Uint32Array#get:length
  i32.gt_s
  if
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.load
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/typedarray/Uint32Array#get:length
   i32.lt_u
   local.set $3
   local.get $3
   if
    local.get $0
    i32.load
    i32.load offset=4
    local.get $2
    i32.add
    i32.load
    local.set $4
    local.get $1
    i32.load
    i32.load offset=4
    local.get $2
    i32.add
    i32.load
    local.set $5
    local.get $4
    local.get $5
    i32.and
    local.get $5
    i32.ne
    if
     i32.const 0
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/index/World#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 37
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/index/InsideWorld#constructor
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#constructor
  call $src/index/World#set:archetypes
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 3632
  call $~lib/rt/__newArray
  call $src/index/World#set:entityArchetype
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 8
  i32.shl
  call $src/SparseSet/SparseSet#constructor
  call $src/index/World#set:entitiesDeleted
  local.get $0
  i32.const 0
  call $src/index/World#set:nextEntityId
  local.get $0
  i32.const 0
  call $src/index/World#set:nextComponentId
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#constructor
  call $src/index/World#set:systems
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<src/Query/Query>#constructor
  call $src/index/World#set:queries
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 21
  i32.const 3664
  call $~lib/rt/__newArray
  call $src/index/World#set:deferredActions
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 1
  call $src/BitMask/BitMask#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/Archetype/Archetype#constructor
  call $src/index/World#set:blankArchetype
  local.get $0
  i32.const 0
  call $src/index/World#set:initialized
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/index/World#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.store
  local.get $1
  local.set $2
  local.get $2
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if (result i32)
   local.get $0
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $1
   call $~lib/array/Array<src/Archetype/Archetype>#__get
   i32.eqz
   i32.eqz
  else
   i32.const 0
  end
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/index/World#createEntity (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.load8_u offset=36
  i32.eqz
  if
   i32.const 3696
   i32.const 3760
   i32.const 136
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.load offset=8
  i32.const 0
  i32.gt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=8
   i32.eqz
   if
    i32.const 3136
    i32.const 2912
    i32.const 84
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $1
   local.tee $3
   local.get $1
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#set:_length
   local.get $3
   call $src/Vector/Vector#get:_length
   call $~lib/typedarray/Uint32Array#__uget
  else
   local.get $0
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 1
   i32.add
   call $src/index/World#set:nextEntityId
   local.get $2
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=32
  local.tee $1
  i32.store
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  local.tee $6
  i32.store offset=12
  local.get $3
  local.set $5
  local.get $6
  local.set $8
  local.get $5
  local.set $7
  local.get $7
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.load offset=4
  local.tee $9
  i32.store offset=16
  local.get $9
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $8
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $7
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.load
   local.tee $9
   i32.store offset=16
   local.get $9
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $8
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $8
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=20
   local.get $10
   local.get $7
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $7
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   local.get $6
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $5
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load
   local.tee $7
   i32.store offset=24
   local.get $5
   local.set $9
   local.get $7
   local.get $7
   i32.load offset=8
   call $src/Vector/Vector#grow
   local.get $7
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=20
   local.get $10
   local.get $7
   local.get $7
   i32.load offset=8
   local.tee $8
   i32.const 1
   i32.add
   call $src/Vector/Vector#set:_length
   local.get $8
   local.get $9
   call $~lib/typedarray/Uint32Array#__uset
   local.get $7
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#__uset
  end
  local.get $6
  drop
  local.get $0
  i32.load offset=4
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  local.get $2
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__set
  local.get $2
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/index/World#deleteEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.store
  local.get $1
  local.set $2
  local.get $2
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $3
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $2
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $3
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=12
   local.get $10
   local.get $2
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $2
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.tee $3
  i32.store
  local.get $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $2
   i32.store offset=16
   i32.const 3920
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   i32.const 1
   local.get $2
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 3920
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   i32.const 2208
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=12
   local.get $10
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3760
   i32.const 152
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.set $2
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $6
  i32.store offset=20
  local.get $4
  local.set $5
  local.get $6
  local.set $8
  local.get $5
  local.set $7
  local.get $7
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.load offset=4
  local.tee $9
  i32.store offset=24
  local.get $9
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $8
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $7
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.load
   local.tee $9
   i32.store offset=24
   local.get $9
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $8
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $8
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=12
   local.get $10
   local.get $7
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $7
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load
   local.tee $9
   i32.store offset=24
   local.get $9
   i32.load offset=8
   i32.eqz
   if
    i32.const 3136
    i32.const 2912
    i32.const 84
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $9
   local.tee $8
   local.get $9
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#set:_length
   local.get $8
   call $src/Vector/Vector#get:_length
   call $~lib/typedarray/Uint32Array#__uget
   local.tee $9
   if (result i32)
    local.get $9
   else
    i32.const 3312
    i32.const 2656
    i32.const 62
    i32.const 26
    call $~lib/builtins/abort
    unreachable
   end
   local.set $9
   local.get $9
   local.get $5
   i32.ne
   if
    local.get $6
    i32.load offset=4
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=8
    local.get $10
    local.get $5
    call $src/Vector/Vector#__uget
    local.set $8
    local.get $6
    i32.load
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=8
    local.get $10
    local.get $8
    local.get $9
    call $src/Vector/Vector#__uset
    local.get $6
    i32.load offset=4
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=8
    local.get $10
    local.get $9
    local.get $8
    call $src/Vector/Vector#__uset
   end
  end
  local.get $6
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $8
  i32.store offset=28
  local.get $1
  local.set $7
  local.get $8
  local.set $5
  local.get $7
  local.set $9
  local.get $9
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.load offset=4
  local.tee $6
  i32.store offset=20
  local.get $6
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $5
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $9
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $5
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=12
   local.get $10
   local.get $9
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $9
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   local.get $8
   i32.load offset=4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $10
   local.get $7
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.load
   local.tee $6
   i32.store offset=20
   local.get $7
   local.set $2
   local.get $6
   local.get $6
   i32.load offset=8
   call $src/Vector/Vector#grow
   local.get $6
   i32.load
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=12
   local.get $10
   local.get $6
   local.get $6
   i32.load offset=8
   local.tee $5
   i32.const 1
   i32.add
   call $src/Vector/Vector#set:_length
   local.get $5
   local.get $2
   call $~lib/typedarray/Uint32Array#__uset
   local.get $6
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#__uset
  end
  local.get $8
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/World#defer (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=28
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $~lib/array/Array<%28%29=>void>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/World#_executeDeferredActions (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=28
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<%28%29=>void>#get:length
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=28
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<%28%29=>void>#get:length
   i32.lt_s
   local.set $2
   local.get $2
   if
    i32.const 0
    global.set $~argumentsLength
    local.get $0
    i32.load offset=28
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $1
    call $~lib/array/Array<%28%29=>void>#__uget
    i32.load
    call_indirect $0 (type $none_=>_none)
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.load offset=28
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  call $~lib/array/Array<%28%29=>void>#set:length
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  call $~lib/array/Array<src/Archetype/Archetype>#constructor
  local.tee $3
  i32.store
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load offset=4
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=4
     local.get $9
     call $~lib/array/Array<src/Archetype/Archetype>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<src/Archetype/Archetype>#set:length
  local.get $3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/index/World#registerSystem (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.load offset=20
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $1
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#push
  drop
  local.get $0
  i32.load offset=24
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $2
  call $~lib/array/Array<src/Query/Query>#push
  drop
  local.get $0
  i32.load8_u offset=36
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#values
   local.tee $3
   i32.store offset=4
   i32.const 0
   local.set $4
   loop $for-loop|0
    local.get $4
    local.get $3
    call $~lib/array/Array<src/Archetype/Archetype>#get:length
    i32.lt_s
    local.set $5
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $4
     call $~lib/array/Array<src/Archetype/Archetype>#__uget
     local.tee $6
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $4
     call $~lib/array/Array<src/Query/Query>#__uget
     local.tee $7
     i32.store offset=12
     local.get $7
     local.get $6
     call $src/Query/Query#tryAdd
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
  end
  local.get $0
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/index/World#init (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.load8_u offset=36
  i32.eqz
  i32.eqz
  if
   i32.const 3952
   i32.const 3760
   i32.const 81
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $src/index/World#set:initialized
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  local.get $0
  i32.load offset=16
  call $src/BitMask/BitMask#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $src/Archetype/Archetype#constructor
  local.tee $1
  i32.store offset=4
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  local.get $1
  i32.load offset=12
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $1
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set
  drop
  local.get $0
  local.get $1
  call $src/index/World#set:blankArchetype
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=24
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/array/Array<src/Query/Query>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=24
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $2
    call $~lib/array/Array<src/Query/Query>#__uget
    local.tee $4
    i32.store offset=12
    local.get $4
    local.get $1
    call $src/Query/Query#tryAdd
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  block $src/index/World#_executeDeferredActions|inlined.0
   local.get $0
   local.set $4
   local.get $4
   i32.load offset=28
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/array/Array<%28%29=>void>#get:length
   i32.eqz
   if
    br $src/index/World#_executeDeferredActions|inlined.0
   end
   i32.const 0
   local.set $2
   loop $for-loop|1
    local.get $2
    local.get $4
    i32.load offset=28
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    call $~lib/array/Array<%28%29=>void>#get:length
    i32.lt_s
    local.set $3
    local.get $3
    if
     i32.const 0
     global.set $~argumentsLength
     local.get $4
     i32.load offset=28
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $5
     local.get $2
     call $~lib/array/Array<%28%29=>void>#__uget
     i32.load
     call_indirect $0 (type $none_=>_none)
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|1
    end
   end
   local.get $4
   i32.load offset=28
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   i32.const 0
   call $~lib/array/Array<%28%29=>void>#set:length
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/Query/Query#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#get:length
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/index/World#update (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=24
  local.tee $2
  i32.store offset=4
  i32.const 0
  local.set $3
  local.get $1
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#get:length
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $4
   i32.lt_s
   local.set $5
   local.get $5
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $3
    call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#__uget
    local.tee $6
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $3
    call $~lib/array/Array<src/Query/Query>#__uget
    local.tee $7
    i32.store offset=12
    i32.const 0
    local.set $8
    local.get $7
    call $src/Query/Query#get:length
    local.set $9
    loop $for-loop|1
     local.get $8
     local.get $9
     i32.lt_s
     local.set $10
     local.get $10
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      local.set $12
      local.get $8
      local.set $11
      local.get $12
      i32.load
      local.set $15
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store offset=16
      local.get $15
      local.get $11
      call $~lib/array/Array<src/Archetype/Archetype>#__uget
      local.tee $12
      i32.store offset=20
      local.get $12
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.load offset=4
      local.tee $13
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $13
      i32.load
      local.tee $14
      i32.store offset=28
      local.get $14
      i32.load offset=8
      i32.const 0
      i32.gt_u
      if
       local.get $12
       local.set $14
       global.get $~lib/memory/__stack_pointer
       local.get $14
       i32.load offset=4
       local.tee $13
       i32.store offset=24
       local.get $13
       i32.load
       local.set $15
       global.get $~lib/memory/__stack_pointer
       local.get $15
       i32.store offset=16
       local.get $15
       local.get $0
       i32.const 2
       global.set $~argumentsLength
       local.get $6
       i32.load
       call_indirect $0 (type $i32_i32_=>_none)
      end
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  block $src/index/World#_executeDeferredActions|inlined.1
   local.get $0
   local.set $11
   local.get $11
   i32.load offset=28
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store offset=16
   local.get $15
   call $~lib/array/Array<%28%29=>void>#get:length
   i32.eqz
   if
    br $src/index/World#_executeDeferredActions|inlined.1
   end
   i32.const 0
   local.set $4
   loop $for-loop|2
    local.get $4
    local.get $11
    i32.load offset=28
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store offset=16
    local.get $15
    call $~lib/array/Array<%28%29=>void>#get:length
    i32.lt_s
    local.set $3
    local.get $3
    if
     i32.const 0
     global.set $~argumentsLength
     local.get $11
     i32.load offset=28
     local.set $15
     global.get $~lib/memory/__stack_pointer
     local.get $15
     i32.store offset=16
     local.get $15
     local.get $4
     call $~lib/array/Array<%28%29=>void>#__uget
     i32.load
     call_indirect $0 (type $none_=>_none)
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|2
    end
   end
   local.get $11
   i32.load offset=28
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store offset=16
   local.get $15
   i32.const 0
   call $~lib/array/Array<%28%29=>void>#set:length
  end
  local.get $0
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
 )
 (func $src/index/World#hasComponent (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.eqz
  i32.eqz
  if (result i32)
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   block $src/BitMask/BitMask#has|inlined.1 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=8
    local.tee $7
    i32.store offset=8
    local.get $4
    local.set $6
    local.get $6
    i32.const 5
    i32.shr_u
    local.set $8
    local.get $8
    local.get $7
    i32.load offset=4
    i32.ge_u
    if
     i32.const 0
     br $src/BitMask/BitMask#has|inlined.1
    end
    local.get $7
    i32.load
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $9
    local.get $8
    call $~lib/typedarray/Uint32Array#__uget
    local.get $6
    global.get $src/BitMask/mod32
    i32.and
    i32.shr_u
    i32.const 1
    i32.and
   end
   i32.const 0
   i32.ne
   i32.const 0
   i32.ne
  else
   i32.const 0
  end
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/index/World#setComponent (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $1
  local.set $3
  local.get $3
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $4
   i32.load offset=4
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $3
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $5
   i32.store offset=4
   local.get $5
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i32.load
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $4
   i32.load offset=4
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=12
   local.get $11
   local.get $3
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $3
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $4
   i32.store
   i32.const 4128
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 1
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 4128
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 2208
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=12
   local.get $11
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3760
   i32.const 166
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.tee $4
  i32.store
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $3
   i32.store offset=16
   i32.const 4160
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 1
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 4160
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 2208
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=12
   local.get $11
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3760
   i32.const 169
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.set $3
  local.get $2
  local.set $5
  block $src/BitMask/BitMask#has|inlined.2 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $7
   i32.store offset=20
   local.get $5
   local.set $6
   local.get $6
   i32.const 5
   i32.shr_u
   local.set $8
   local.get $8
   local.get $7
   i32.load offset=4
   i32.ge_u
   if
    i32.const 0
    br $src/BitMask/BitMask#has|inlined.2
   end
   local.get $7
   i32.load
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $8
   call $~lib/typedarray/Uint32Array#__uget
   local.get $6
   global.get $src/BitMask/mod32
   i32.and
   i32.shr_u
   i32.const 1
   i32.and
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $4
   local.set $7
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.load offset=4
   local.tee $5
   i32.store offset=4
   local.get $6
   local.set $8
   local.get $5
   local.set $9
   local.get $8
   local.set $3
   local.get $3
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.load offset=4
   local.tee $10
   i32.store offset=24
   local.get $10
   i32.load offset=4
   i32.lt_u
   if (result i32)
    local.get $9
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $3
    call $src/Vector/Vector#__uget
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.load
    local.tee $10
    i32.store offset=24
    local.get $10
    i32.load offset=8
    i32.lt_u
   else
    i32.const 0
   end
   if (result i32)
    local.get $9
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $9
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    local.get $3
    call $src/Vector/Vector#__uget
    call $src/Vector/Vector#__uget
    local.get $3
    i32.eq
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load
    local.tee $10
    i32.store offset=24
    local.get $10
    i32.load offset=8
    i32.eqz
    if
     i32.const 3136
     i32.const 2912
     i32.const 84
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $10
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $10
    local.tee $9
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#set:_length
    local.get $9
    call $src/Vector/Vector#get:_length
    call $~lib/typedarray/Uint32Array#__uget
    local.tee $10
    if (result i32)
     local.get $10
    else
     i32.const 3312
     i32.const 2656
     i32.const 62
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    local.set $10
    local.get $10
    local.get $8
    i32.ne
    if
     local.get $5
     i32.load offset=4
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=8
     local.get $11
     local.get $8
     call $src/Vector/Vector#__uget
     local.set $9
     local.get $5
     i32.load
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=8
     local.get $11
     local.get $9
     local.get $10
     call $src/Vector/Vector#__uset
     local.get $5
     i32.load offset=4
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=8
     local.get $11
     local.get $10
     local.get $9
     call $src/Vector/Vector#__uset
    end
   end
   local.get $5
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $4
   local.get $2
   local.get $0
   i32.load
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=28
   local.get $11
   local.get $0
   i32.load offset=24
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=32
   local.get $11
   call $src/Archetype/Archetype#transform
   local.tee $4
   i32.store
   local.get $4
   local.set $9
   local.get $1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.load offset=4
   local.tee $8
   i32.store offset=36
   local.get $3
   local.set $10
   local.get $8
   local.set $6
   local.get $10
   local.set $5
   local.get $5
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load offset=4
   local.tee $7
   i32.store offset=20
   local.get $7
   i32.load offset=4
   i32.lt_u
   if (result i32)
    local.get $6
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $5
    call $src/Vector/Vector#__uget
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load
    local.tee $7
    i32.store offset=20
    local.get $7
    i32.load offset=8
    i32.lt_u
   else
    i32.const 0
   end
   if (result i32)
    local.get $6
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $6
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    local.get $5
    call $src/Vector/Vector#__uget
    call $src/Vector/Vector#__uget
    local.get $5
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    local.get $8
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $10
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $10
    local.set $7
    local.get $5
    local.get $5
    i32.load offset=8
    call $src/Vector/Vector#grow
    local.get $5
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    local.get $5
    local.get $5
    i32.load offset=8
    local.tee $6
    i32.const 1
    i32.add
    call $src/Vector/Vector#set:_length
    local.get $6
    local.get $7
    call $~lib/typedarray/Uint32Array#__uset
    local.get $5
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#__uset
   end
   local.get $8
   drop
   local.get $0
   i32.load offset=4
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $1
   local.get $4
   call $~lib/array/Array<src/Archetype/Archetype>#__set
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/World#removeComponent (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $1
  local.set $3
  local.get $3
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=4
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $4
   i32.load offset=4
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $3
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $5
   i32.store offset=4
   local.get $5
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i32.load
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $4
   i32.load offset=4
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=12
   local.get $11
   local.get $3
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $3
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $4
   i32.store
   i32.const 4192
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 1
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 4192
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 2208
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=12
   local.get $11
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3760
   i32.const 181
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.tee $4
  i32.store
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $3
   i32.store offset=16
   i32.const 4224
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 1
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 4224
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   i32.const 2208
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=12
   local.get $11
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3760
   i32.const 184
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.set $3
  local.get $2
  local.set $5
  block $src/BitMask/BitMask#has|inlined.3 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $7
   i32.store offset=20
   local.get $5
   local.set $6
   local.get $6
   i32.const 5
   i32.shr_u
   local.set $8
   local.get $8
   local.get $7
   i32.load offset=4
   i32.ge_u
   if
    i32.const 0
    br $src/BitMask/BitMask#has|inlined.3
   end
   local.get $7
   i32.load
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $8
   call $~lib/typedarray/Uint32Array#__uget
   local.get $6
   global.get $src/BitMask/mod32
   i32.and
   i32.shr_u
   i32.const 1
   i32.and
  end
  i32.const 0
  i32.ne
  if
   local.get $4
   local.set $7
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.load offset=4
   local.tee $5
   i32.store offset=4
   local.get $6
   local.set $8
   local.get $5
   local.set $9
   local.get $8
   local.set $3
   local.get $3
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.load offset=4
   local.tee $10
   i32.store offset=24
   local.get $10
   i32.load offset=4
   i32.lt_u
   if (result i32)
    local.get $9
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $3
    call $src/Vector/Vector#__uget
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.load
    local.tee $10
    i32.store offset=24
    local.get $10
    i32.load offset=8
    i32.lt_u
   else
    i32.const 0
   end
   if (result i32)
    local.get $9
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $9
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    local.get $3
    call $src/Vector/Vector#__uget
    call $src/Vector/Vector#__uget
    local.get $3
    i32.eq
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load
    local.tee $10
    i32.store offset=24
    local.get $10
    i32.load offset=8
    i32.eqz
    if
     i32.const 3136
     i32.const 2912
     i32.const 84
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $10
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $10
    local.tee $9
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#set:_length
    local.get $9
    call $src/Vector/Vector#get:_length
    call $~lib/typedarray/Uint32Array#__uget
    local.tee $10
    if (result i32)
     local.get $10
    else
     i32.const 3312
     i32.const 2656
     i32.const 62
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    local.set $10
    local.get $10
    local.get $8
    i32.ne
    if
     local.get $5
     i32.load offset=4
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=8
     local.get $11
     local.get $8
     call $src/Vector/Vector#__uget
     local.set $9
     local.get $5
     i32.load
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=8
     local.get $11
     local.get $9
     local.get $10
     call $src/Vector/Vector#__uset
     local.get $5
     i32.load offset=4
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store offset=8
     local.get $11
     local.get $10
     local.get $9
     call $src/Vector/Vector#__uset
    end
   end
   local.get $5
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $4
   local.get $2
   local.get $0
   i32.load
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=28
   local.get $11
   local.get $0
   i32.load offset=24
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=32
   local.get $11
   call $src/Archetype/Archetype#transform
   local.tee $4
   i32.store
   local.get $4
   local.set $9
   local.get $1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.load offset=4
   local.tee $8
   i32.store offset=36
   local.get $3
   local.set $10
   local.get $8
   local.set $6
   local.get $10
   local.set $5
   local.get $5
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load offset=4
   local.tee $7
   i32.store offset=20
   local.get $7
   i32.load offset=4
   i32.lt_u
   if (result i32)
    local.get $6
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $5
    call $src/Vector/Vector#__uget
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load
    local.tee $7
    i32.store offset=20
    local.get $7
    i32.load offset=8
    i32.lt_u
   else
    i32.const 0
   end
   if (result i32)
    local.get $6
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $6
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    local.get $5
    call $src/Vector/Vector#__uget
    call $src/Vector/Vector#__uget
    local.get $5
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    local.get $8
    i32.load offset=4
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $10
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $10
    local.set $7
    local.get $5
    local.get $5
    i32.load offset=8
    call $src/Vector/Vector#grow
    local.get $5
    i32.load
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    local.get $5
    local.get $5
    i32.load offset=8
    local.tee $6
    i32.const 1
    i32.add
    call $src/Vector/Vector#set:_length
    local.get $6
    local.get $7
    call $~lib/typedarray/Uint32Array#__uset
    local.get $5
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#__uset
   end
   local.get $8
   drop
   local.get $0
   i32.load offset=4
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   local.get $1
   local.get $4
   call $~lib/array/Array<src/Archetype/Archetype>#__set
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/Query/Some#test (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/BitMask/BitMask#isSuperSetOf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Query/Not#test (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $src/BitMask/BitMask#isSuperSetOf
  i32.eqz
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Query/Query#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Query/Query#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__uget
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/SparseSet/SparseSet#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   local.get $1
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   local.get $0
   i32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   local.get $1
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $1
   i32.eq
  else
   i32.const 0
  end
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/SparseSet/SparseSet#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  i32.load offset=8
  i32.lt_u
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $2
   i32.store
   i32.const 4384
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 1
   local.get $2
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 4384
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 2208
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2656
   i32.const 35
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  call $src/Vector/Vector#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/SparseSet/SparseSet#uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/Vector/Vector#__uget
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/SparseSet/SparseSet#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $0
  local.set $3
  local.get $1
  local.set $2
  local.get $2
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $4
   i32.store
   local.get $4
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=12
   local.get $1
   local.set $4
   local.get $2
   local.get $2
   i32.load offset=8
   call $src/Vector/Vector#grow
   local.get $2
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $2
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.const 1
   i32.add
   call $src/Vector/Vector#set:_length
   local.get $3
   local.get $4
   call $~lib/typedarray/Uint32Array#__uset
   local.get $2
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#__uset
  end
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/SparseSet/SparseSet#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $1
  i32.store
  local.get $1
  i32.load offset=8
  i32.eqz
  if
   i32.const 3136
   i32.const 2912
   i32.const 84
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  local.tee $2
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.sub
  call $src/Vector/Vector#set:_length
  local.get $2
  call $src/Vector/Vector#get:_length
  call $~lib/typedarray/Uint32Array#__uget
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/SparseSet/SparseSet#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  local.set $3
  local.get $1
  local.set $2
  local.get $2
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  i32.load offset=4
  i32.lt_u
  if (result i32)
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $4
   i32.store
   local.get $4
   i32.load offset=8
   i32.lt_u
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $3
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   local.get $2
   call $src/Vector/Vector#__uget
   call $src/Vector/Vector#__uget
   local.get $2
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $4
   i32.store
   local.get $4
   i32.load offset=8
   i32.eqz
   if
    i32.const 3136
    i32.const 2912
    i32.const 84
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $4
   local.tee $3
   local.get $4
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#set:_length
   local.get $3
   call $src/Vector/Vector#get:_length
   call $~lib/typedarray/Uint32Array#__uget
   local.tee $4
   if (result i32)
    local.get $4
   else
    i32.const 3312
    i32.const 2656
    i32.const 62
    i32.const 26
    call $~lib/builtins/abort
    unreachable
   end
   local.set $4
   local.get $4
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $1
    call $src/Vector/Vector#__uget
    local.set $3
    local.get $0
    i32.load
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $3
    local.get $4
    call $src/Vector/Vector#__uset
    local.get $0
    i32.load offset=4
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $4
    local.get $3
    call $src/Vector/Vector#__uset
   end
  end
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/Vector/Vector#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load8_u offset=12
  i32.const 0
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $0
   i32.load offset=8
   i32.lt_u
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $3
   i32.store
   i32.const 4416
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 1
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 4416
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 2208
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2912
   i32.const 58
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $src/Vector/Vector#grow
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/Vector/Vector#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=8
  call $src/Vector/Vector#grow
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $0
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 1
  i32.add
  call $src/Vector/Vector#set:_length
  local.get $2
  local.get $1
  call $~lib/typedarray/Uint32Array#__uset
  local.get $0
  i32.load offset=8
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/Vector/Vector#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=8
  i32.eqz
  if
   i32.const 3136
   i32.const 2912
   i32.const 84
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $0
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  call $src/Vector/Vector#set:_length
  local.get $1
  call $src/Vector/Vector#get:_length
  call $~lib/typedarray/Uint32Array#__uget
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Vector/Vector#subArray (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load8_u offset=12
  if
   local.get $0
   i32.load
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $0
  i32.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/typedarray/Uint32Array#subarray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 272
   i32.const 400
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 240
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.set $6
   local.get $0
   local.set $5
   local.get $3
   local.set $4
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $2
    local.set $6
    local.get $0
    local.set $5
    local.get $3
    local.set $4
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $6
    local.get $5
    i64.extend_i32_u
    local.get $4
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $2
    local.get $0
    i64.extend_i32_u
    local.get $3
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 2208
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store
  local.get $5
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $5
  local.get $2
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/typedarray/Uint32Array#reduceRight<~lib/string/String> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  local.get $5
  call $~lib/typedarray/Uint32Array#get:length
  i32.const 1
  i32.sub
  local.set $7
  loop $for-loop|0
   local.get $7
   i32.const 0
   i32.ge_s
   local.set $8
   local.get $8
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $7
    local.get $5
    i32.const 4
    global.set $~argumentsLength
    local.get $4
    i32.load
    call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
    local.tee $3
    i32.store
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $for-loop|0
   end
  end
  local.get $3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2272
   i32.const 2320
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $0
  local.get $5
  call $~lib/array/Array<src/Archetype/Archetype>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<src/Archetype/Archetype>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<src/Archetype/Archetype>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/RelativeIndexable/RelativeIndexable<u32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $1
  i32.const 1073741820
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2272
   i32.const 2368
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/typedarray/Uint32Array#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.store
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Vector/Vector#constructor (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32) (result i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $src/Vector/Vector#set:_array
  local.get $0
  i32.const 0
  call $src/Vector/Vector#set:_size
  local.get $0
  i32.const 0
  call $src/Vector/Vector#set:_length
  local.get $0
  i32.const 0
  call $src/Vector/Vector#set:_sparse
  local.get $0
  f32.const 0
  call $src/Vector/Vector#set:_growFactor
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/RelativeIndexable/RelativeIndexable<u32>#constructor
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  call $src/Vector/Vector#set:_size
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  call $src/Vector/Vector#set:_array
  local.get $0
  local.get $2
  f64.promote_f32
  local.set $5
  f64.const 1.1
  local.set $4
  local.get $5
  local.get $4
  f64.max
  f32.demote_f64
  call $src/Vector/Vector#set:_growFactor
  local.get $0
  local.get $3
  call $src/Vector/Vector#set:_sparse
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/SparseSet/SparseSet#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $src/SparseSet/SparseSet#set:_dense
  local.get $0
  i32.const 0
  call $src/SparseSet/SparseSet#set:_indices
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/RelativeIndexable/RelativeIndexable<u32>#constructor
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  local.get $1
  f32.const 1.5
  i32.const 0
  call $src/Vector/Vector#constructor
  call $src/SparseSet/SparseSet#set:_dense
  local.get $0
  i32.const 0
  local.get $1
  f32.const 1.5
  i32.const 1
  call $src/Vector/Vector#constructor
  call $src/SparseSet/SparseSet#set:_indices
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Archetype/Archetype#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#constructor
  call $src/Archetype/Archetype#set:_transformations
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 10
  i32.shl
  call $src/SparseSet/SparseSet#constructor
  call $src/Archetype/Archetype#set:_entities
  local.get $0
  i32.const 0
  call $src/Archetype/Archetype#set:mask
  local.get $0
  i32.const 0
  call $src/Archetype/Archetype#set:id
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#set:mask
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#toString
  call $src/Archetype/Archetype#set:id
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Archetype/Archetype#get:length (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.load offset=8
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 2208
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 2208
   end
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  i32.const 0
  local.set $5
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   local.set $7
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $5
     local.get $6
     call $~lib/string/String#get:length
     i32.add
     local.set $5
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $8
  local.get $2
  call $~lib/string/String#get:length
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $5
  local.get $9
  local.get $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $10
  i32.store offset=8
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $3
   i32.lt_s
   local.set $7
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $6
     call $~lib/string/String#get:length
     local.set $11
     local.get $10
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $11
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $11
     i32.add
     local.set $8
    end
    local.get $9
    if
     local.get $10
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $9
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $9
     i32.add
     local.set $8
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.ne
  if
   local.get $10
   local.get $8
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   local.get $6
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $10
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $src/Archetype/Archetype#get:entities (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 128
   i32.const 2320
   i32.const 107
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 3392
   i32.const 2320
   i32.const 111
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/BitMask/BitMask#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#set:maxValue
  local.get $0
  i32.const 0
  call $src/BitMask/BitMask#set:_mask
  local.get $0
  i32.const 0
  call $src/BitMask/BitMask#set:_size
  local.get $0
  local.get $1
  f64.convert_i32_u
  f64.const 32
  f64.div
  local.set $2
  local.get $2
  f64.ceil
  i32.trunc_f64_u
  call $src/BitMask/BitMask#set:_size
  local.get $0
  i32.const 0
  local.get $0
  i32.load offset=4
  call $~lib/typedarray/Uint32Array#constructor
  call $src/BitMask/BitMask#set:_mask
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2272
   i32.const 2368
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find
  local.set $4
  local.get $4
  if
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store
   local.get $5
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   call $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:key
   i32.const 1
   drop
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesCount
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   call $~lib/map/MapEntry<~lib/string/String,src/Archetype/Archetype>#set:taggedNext
   local.get $6
   local.get $4
   i32.store
  end
  local.get $0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/index/InsideWorld#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $5
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  local.get $5
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $6
  local.get $5
  i32.store offset=4
  local.get $6
  local.get $4
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $6
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2272
   i32.const 2320
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $0
  local.get $5
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<%28src/RelativeIndexable/RelativeIndexable<u32>%2Csrc/index/InsideWorld%29=>void>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<src/Query/Query>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Query/Query>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Query/Query>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Query/Query>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Query/Query>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2272
   i32.const 2320
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $0
  local.get $5
  call $~lib/array/Array<src/Query/Query>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<src/Query/Query>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<src/Query/Query>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<src/Query/Query>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/Query/QueryMask#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.get $1
  call $src/Query/QueryMask#set:mask
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Query/Every#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 24
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/Query/QueryMask#constructor
  local.tee $0
  i32.store
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Query/Some#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/Query/QueryMask#constructor
  local.tee $0
  i32.store
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Query/Not#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 26
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/Query/QueryMask#constructor
  local.tee $0
  i32.store
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/Query/every (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<u32>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
    call $src/BitMask/BitMask#or
    drop
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $1
  call $src/Query/Every#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/Query/some (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<u32>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
    call $src/BitMask/BitMask#or
    drop
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $1
  call $src/Query/Some#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/Query/not (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<u32>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
    call $src/BitMask/BitMask#or
    drop
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $1
  call $src/Query/Not#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/Query/or (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  call $~lib/array/Array<src/Query/QueryMask>#get:length
  i32.eqz
  if
   i32.const 4256
   i32.const 4336
   i32.const 59
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Query/QueryMask>#__uget
  i32.load
  local.tee $1
  i32.store
  i32.const 1
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<src/Query/QueryMask>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $2
    call $~lib/array/Array<src/Query/QueryMask>#__uget
    local.tee $4
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load
    local.tee $5
    i32.store offset=8
    local.get $4
    local.tee $6
    i32.eqz
    if (result i32)
     i32.const 0
    else
     local.get $6
     i32.const 26
     call $~lib/rt/__instanceof
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     call $src/BitMask/BitMask#not
     local.tee $5
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $5
    call $src/BitMask/BitMask#intersection
    local.tee $1
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $1
  call $src/Query/Some#constructor
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/Query/and (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  call $~lib/array/Array<src/Query/QueryMask>#get:length
  i32.eqz
  if
   i32.const 4256
   i32.const 4336
   i32.const 73
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Query/QueryMask>#__uget
  i32.load
  local.tee $1
  i32.store
  i32.const 1
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<src/Query/QueryMask>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $2
    call $~lib/array/Array<src/Query/QueryMask>#__uget
    local.tee $4
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load
    local.tee $5
    i32.store offset=8
    local.get $4
    local.tee $6
    i32.eqz
    if (result i32)
     i32.const 0
    else
     local.get $6
     i32.const 26
     call $~lib/rt/__instanceof
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     call $src/BitMask/BitMask#not
     local.tee $5
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $5
    call $src/BitMask/BitMask#union
    local.tee $1
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $1
  call $src/Query/Every#constructor
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/Query/Query#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.get $1
  call $src/Query/Query#set:_queryMasks
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#constructor
  call $src/Query/Query#set:_archetypes
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/SparseSet/SparseSet#get:length (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $1
  i32.store
  local.get $1
  i32.load offset=8
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint32Array#subarray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint32Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $4
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else
   local.get $4
   local.tee $8
   local.get $6
   local.tee $7
   local.get $8
   local.get $7
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else
   local.get $3
   local.tee $8
   local.get $6
   local.tee $7
   local.get $8
   local.get $7
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 9
  call $~lib/rt/itcms/__new
  local.tee $7
  i32.store
  local.get $5
  i32.load
  local.set $8
  local.get $7
  local.get $8
  i32.store
  local.get $7
  local.get $8
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $export:src/Archetype/Archetype#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Archetype/Archetype#get:mask (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Archetype/Archetype#get:mask
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Archetype/Archetype#set:mask (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#set:mask
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Archetype/Archetype#get:id (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Archetype/Archetype#get:id
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Archetype/Archetype#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Archetype/Archetype#get:length
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Archetype/Archetype#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Archetype/Archetype#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#__uget
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Archetype/Archetype#hasComponent (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#hasComponent
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Archetype/Archetype#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#hasEntity
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Archetype/Archetype#addEntity (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#addEntity
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Archetype/Archetype#removeEntity (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#removeEntity
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Archetype/Archetype#get:entities (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Archetype/Archetype#get:entities
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Archetype/Archetype#transform (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/Archetype/Archetype#transform
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:src/BitMask/BitMask#get:_mask (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#get:_mask
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/BitMask/BitMask#set:_mask (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#set:_mask
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#get:maxValue (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#get:maxValue
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/BitMask/BitMask#set:maxValue (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#set:maxValue
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#has
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#__grow (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#__grow
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#xor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#xor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#or (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#or
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#and (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#and
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#not (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#not
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/BitMask/BitMask#union (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#union
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#intersection (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#intersection
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#symmetrictDifference (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#symmetrictDifference
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#isSuperSetOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#isSuperSetOf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/BitMask/BitMask#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/BitMask/BitMask#copy (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#copy
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/index/InsideWorld#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/index/InsideWorld#hasEntity
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/index/InsideWorld#createEntity (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/InsideWorld#createEntity
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/index/InsideWorld#deleteEntity (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/index/InsideWorld#deleteEntity
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/InsideWorld#defer (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/index/InsideWorld#defer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/InsideWorld#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/InsideWorld#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/index/World#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/index/World#hasEntity
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/index/World#createEntity (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/World#createEntity
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/index/World#deleteEntity (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/index/World#deleteEntity
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#defer (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/index/World#defer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/World#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/index/World#_executeDeferredActions (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/World#_executeDeferredActions
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#registerSystem (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $src/index/World#registerSystem
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/index/World#init (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/World#init
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#update (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/World#update
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/index/World#hasComponent (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/index/World#hasComponent
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/index/World#setComponent (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/index/World#setComponent
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#removeComponent (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/index/World#removeComponent
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Query/QueryMask#get:mask (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/QueryMask#get:mask
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Query/Every#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Every#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/Every#test (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Every#test
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/Some#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Some#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/Some#test (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Some#test
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/Not#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Not#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/Not#test (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Not#test
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/every (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/every
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Query/some (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/some
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Query/not (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/not
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Query/or (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/or
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Query/and (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/and
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Query/Query#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Query#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/Query#tryAdd (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Query#tryAdd
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Query/Query#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/Query#get:length
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Query/Query#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Query/Query#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/Query#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Query/Query#__uget
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Query/createQuery (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/createQuery
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/SparseSet/SparseSet#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/SparseSet/SparseSet#get:length
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/SparseSet/SparseSet#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/SparseSet/SparseSet#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/SparseSet/SparseSet#get:values (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/SparseSet/SparseSet#get:values
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/SparseSet/SparseSet#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/SparseSet/SparseSet#has
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/SparseSet/SparseSet#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/SparseSet/SparseSet#get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/SparseSet/SparseSet#uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/SparseSet/SparseSet#uget
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/SparseSet/SparseSet#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/SparseSet/SparseSet#add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/SparseSet/SparseSet#pop (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/SparseSet/SparseSet#pop
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/SparseSet/SparseSet#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/SparseSet/SparseSet#delete
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Vector/Vector#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Vector/Vector#get:length
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Vector/Vector#constructor (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/Vector/Vector#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:src/Vector/Vector#get:size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Vector/Vector#get:size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Vector/Vector#get:sparse (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Vector/Vector#get:sparse
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Vector/Vector#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Vector/Vector#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Vector/Vector#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/Vector/Vector#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Vector/Vector#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Vector/Vector#__uget
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Vector/Vector#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/Vector/Vector#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Vector/Vector#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Vector/Vector#push
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/Vector/Vector#pop (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Vector/Vector#pop
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/Vector/Vector#subArray (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Vector/Vector#subArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
