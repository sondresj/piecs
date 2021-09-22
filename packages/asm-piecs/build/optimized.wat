(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_f64_i32_=>_i32 (func (param i32 i32 f64 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
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
 (global $src/Archetype/Archetype i32 (i32.const 3))
 (global $src/BitMask/BitMask i32 (i32.const 9))
 (global $src/index/InsideWorld i32 (i32.const 17))
 (global $src/index/World i32 (i32.const 18))
 (global $src/Query/Query i32 (i32.const 13))
 (global $src/SparseSet/SparseSet i32 (i32.const 5))
 (global $src/Vector/Vector i32 (i32.const 7))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 22028))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1196) ",")
 (data (i32.const 1208) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1244) "\1c")
 (data (i32.const 1256) "\01\00\00\00\02\00\00\000")
 (data (i32.const 1276) "|")
 (data (i32.const 1288) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 1404) "<")
 (data (i32.const 1416) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 1468) "<")
 (data (i32.const 1480) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1596) "<")
 (data (i32.const 1608) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1660) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2060) "\1c\04")
 (data (i32.const 2072) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 3116) "\\")
 (data (i32.const 3128) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3224) "\01")
 (data (i32.const 3244) "\1c")
 (data (i32.const 3256) "\n\00\00\00\08\00\00\00\01")
 (data (i32.const 3276) ",")
 (data (i32.const 3288) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 3324) ",")
 (data (i32.const 3336) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 3372) "<")
 (data (i32.const 3384) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 3436) "<")
 (data (i32.const 3448) "\01\00\00\00\"\00\00\00S\00p\00a\00r\00s\00e\00S\00e\00t\00:\00 \00I\00n\00d\00e\00x\00 ")
 (data (i32.const 3500) "|")
 (data (i32.const 3512) "\01\00\00\00b\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00.\00 \00C\00h\00e\00c\00k\00 \00S\00p\00a\00r\00s\00e\00S\00e\00t\00.\00l\00e\00n\00g\00t\00h\00 \00>\00 \00i\00n\00d\00e\00x")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3640) "\0b\00\00\00\0c\00\00\00\80\0d\00\00\00\00\00\00\c0\0d")
 (data (i32.const 3660) "<")
 (data (i32.const 3672) "\01\00\00\00 \00\00\00s\00r\00c\00/\00S\00p\00a\00r\00s\00e\00S\00e\00t\00.\00t\00s")
 (data (i32.const 3724) ",")
 (data (i32.const 3736) "\01\00\00\00\1c\00\00\00V\00e\00c\00t\00o\00r\00:\00 \00I\00n\00d\00e\00x\00 ")
 (data (i32.const 3772) "l")
 (data (i32.const 3784) "\01\00\00\00\\\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00.\00 \00C\00h\00e\00c\00k\00 \00i\00n\00d\00e\00x\00 \00<\00 \00V\00e\00c\00t\00o\00r\00.\00l\00e\00n\00g\00t\00h")
 (data (i32.const 3884) "\1c")
 (data (i32.const 3896) "\0b\00\00\00\0c\00\00\00\a0\0e\00\00\00\00\00\00\d0\0e")
 (data (i32.const 3916) ",")
 (data (i32.const 3928) "\01\00\00\00\1a\00\00\00s\00r\00c\00/\00V\00e\00c\00t\00o\00r\00.\00t\00s")
 (data (i32.const 3964) "l")
 (data (i32.const 3976) "\01\00\00\00X\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00.\00 \00C\00h\00e\00c\00k\00 \00i\00n\00d\00e\00x\00 \00<\00 \00V\00e\00c\00t\00o\00r\00.\00s\00i\00z\00e")
 (data (i32.const 4076) "\1c")
 (data (i32.const 4088) "\0b\00\00\00\0c\00\00\00\a0\0e\00\00\00\00\00\00\90\0f")
 (data (i32.const 4108) "\1c")
 (data (i32.const 4120) "\0b\00\00\00\0c\00\00\00\a0\0e\00\00\00\00\00\00\d0\0e")
 (data (i32.const 4140) "\ac")
 (data (i32.const 4152) "\01\00\00\00\8e\00\00\00V\00e\00c\00t\00o\00r\00:\00 \00C\00a\00n\00n\00o\00t\00 \00p\00o\00p\00 \00e\00m\00p\00t\00y\00 \00v\00e\00c\00t\00o\00r\00.\00 \00C\00h\00e\00c\00k\00 \00V\00e\00c\00t\00o\00r\00.\00l\00e\00n\00g\00t\00h\00 \00>\00 \000\00 \00b\00e\00f\00o\00r\00e\00 \00p\00o\00p\00p\00i\00n\00g")
 (data (i32.const 4316) "L")
 (data (i32.const 4328) "\01\00\00\002\00\00\00S\00p\00a\00r\00s\00e\00S\00e\00t\00:\00 \00I\00n\00t\00e\00r\00n\00a\00l\00 \00e\00r\00r\00o\00r")
 (data (i32.const 4396) "|")
 (data (i32.const 4408) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 4524) "<")
 (data (i32.const 4536) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 4588) ",")
 (data (i32.const 4600) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 4636) "\1c")
 (data (i32.const 4668) "\1c")
 (data (i32.const 4700) "<")
 (data (i32.const 4712) "\01\00\00\00\1e\00\00\00N\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 4764) ",")
 (data (i32.const 4776) "\01\00\00\00\18\00\00\00s\00r\00c\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 4812) ",")
 (data (i32.const 4824) "\01\00\00\00\0e\00\00\00E\00n\00t\00i\00t\00y\00 ")
 (data (i32.const 4860) "<")
 (data (i32.const 4872) "\01\00\00\00\1e\00\00\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 4924) "\1c")
 (data (i32.const 4936) "\0b\00\00\00\0c\00\00\00\e0\12\00\00\00\00\00\00\10\13")
 (data (i32.const 4956) "|")
 (data (i32.const 4968) "\01\00\00\00^\00\00\00A\00t\00t\00e\00m\00p\00t\00e\00d\00 \00t\00o\00 \00r\00e\00b\00u\00i\00l\00d\00 \00w\00o\00r\00l\00d\00,\00 \00t\00h\00i\00s\00 \00i\00s\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d")
 (data (i32.const 5084) ",")
 (data (i32.const 5096) "\01\00\00\00\16\00\00\00 \00i\00s\00 \00d\00e\00l\00e\00t\00e\00d")
 (data (i32.const 5132) "\1c")
 (data (i32.const 5144) "\0b\00\00\00\0c\00\00\00\e0\12\00\00\00\00\00\00\f0\13")
 (data (i32.const 5164) "\1c")
 (data (i32.const 5176) "\0b\00\00\00\0c\00\00\00\e0\12\00\00\00\00\00\00\10\13")
 (data (i32.const 5196) "\1c")
 (data (i32.const 5208) "\0b\00\00\00\0c\00\00\00\e0\12\00\00\00\00\00\00\f0\13")
 (data (i32.const 5228) "\1c")
 (data (i32.const 5240) "\0b\00\00\00\0c\00\00\00\e0\12\00\00\00\00\00\00\10\13")
 (data (i32.const 5260) "L")
 (data (i32.const 5272) "\01\00\00\00<\00\00\00Q\00u\00e\00r\00y\00:\00 \00E\00m\00p\00t\00y\00 \00b\00l\00o\00c\00k\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d")
 (data (i32.const 5340) ",")
 (data (i32.const 5352) "\01\00\00\00\18\00\00\00s\00r\00c\00/\00Q\00u\00e\00r\00y\00.\00t\00s")
 (data (i32.const 5388) "\1c")
 (data (i32.const 5400) "\0b\00\00\00\0c\00\00\00\80\0d\00\00\00\00\00\00\c0\0d")
 (data (i32.const 5424) "\1b\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 5460) "\02A")
 (data (i32.const 5472) "\06\00\00\00 ")
 (data (i32.const 5488) "\06\00\00\00\01\01\00\00\02")
 (data (i32.const 5516) "\04A\00\00\00\00\00\00\10A\82")
 (data (i32.const 5548) "\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00 ")
 (data (i32.const 5576) "\11\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t")
 (data (i32.const 5612) "\02\01")
 (data (i32.const 5624) "\0e\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\0e")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $src/BitMask/BitMask#toString~anonymous|0)
 (export "Archetype" (global $src/Archetype/Archetype))
 (export "BitMask" (global $src/BitMask/BitMask))
 (export "InsideWorld" (global $src/index/InsideWorld))
 (export "World" (global $src/index/World))
 (export "Query" (global $src/Query/Query))
 (export "SparseSet" (global $src/SparseSet/SparseSet))
 (export "Vector" (global $src/Vector/Vector))
 (export "memory" (memory $0))
 (export "Archetype#constructor" (func $export:src/Archetype/Archetype#constructor))
 (export "Archetype#get:mask" (func $export:src/Archetype/Archetype#get:mask))
 (export "Archetype#set:mask" (func $export:src/Archetype/Archetype#set:mask))
 (export "Archetype#get:id" (func $export:src/Archetype/Archetype#get:id))
 (export "Archetype#get:length" (func $export:src/Archetype/Archetype#get:length))
 (export "Archetype#__get" (func $export:src/Archetype/Archetype#__get))
 (export "Archetype#hasComponent" (func $export:src/Archetype/Archetype#hasComponent))
 (export "Archetype#hasEntity" (func $export:src/Archetype/Archetype#hasEntity))
 (export "Archetype#addEntity" (func $export:src/Archetype/Archetype#addEntity))
 (export "Archetype#removeEntity" (func $export:src/Archetype/Archetype#removeEntity))
 (export "Archetype#get:entities" (func $export:src/Archetype/Archetype#get:entities))
 (export "Archetype#transform" (func $export:src/Archetype/Archetype#transform))
 (export "BitMask#get:_mask" (func $export:src/BitMask/BitMask#get:_mask))
 (export "BitMask#set:_mask" (func $export:src/BitMask/BitMask#set:_mask))
 (export "BitMask#get:maxValue" (func $export:src/Archetype/Archetype#get:mask))
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
 (export "BitMask#isSuperSetOf" (func $export:src/BitMask/BitMask#isSuperSetOf))
 (export "BitMask#isSubSetOf" (func $export:src/BitMask/BitMask#isSubSetOf))
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
 (export "every" (func $export:src/Query/every))
 (export "some" (func $export:src/Query/some))
 (export "not" (func $export:src/Query/not))
 (export "or" (func $export:src/Query/or))
 (export "and" (func $export:src/Query/and))
 (export "Query#constructor" (func $export:src/Query/Query#constructor))
 (export "Query#tryAddMatch" (func $export:src/Query/Query#tryAddMatch))
 (export "Query#get:length" (func $export:src/Query/Query#get:length))
 (export "Query#__get" (func $export:src/Query/Query#__get))
 (export "Query#__uget" (func $export:src/Query/Query#__uget))
 (export "createQuery" (func $export:src/Query/createQuery))
 (export "SparseSet#get:length" (func $export:src/SparseSet/SparseSet#get:length))
 (export "SparseSet#constructor" (func $export:src/SparseSet/SparseSet#constructor))
 (export "SparseSet#get:values" (func $export:src/BitMask/BitMask#get:_mask))
 (export "SparseSet#has" (func $export:src/SparseSet/SparseSet#has))
 (export "SparseSet#get" (func $export:src/SparseSet/SparseSet#get))
 (export "SparseSet#add" (func $export:src/SparseSet/SparseSet#add))
 (export "SparseSet#pop" (func $export:src/SparseSet/SparseSet#pop))
 (export "SparseSet#delete" (func $export:src/SparseSet/SparseSet#delete))
 (export "Vector#get:length" (func $export:src/Archetype/Archetype#get:mask))
 (export "Vector#constructor" (func $export:src/Vector/Vector#constructor))
 (export "Vector#get:size" (func $export:src/Vector/Vector#get:size))
 (export "Vector#get:sparse" (func $export:src/Vector/Vector#get:sparse))
 (export "Vector#__get" (func $export:src/Vector/Vector#__get))
 (export "Vector#__set" (func $export:src/Vector/Vector#__set))
 (export "Vector#push" (func $export:src/Vector/Vector#push))
 (export "Vector#pop" (func $export:src/Vector/Vector#pop))
 (export "Vector#subArray" (func $export:src/Vector/Vector#subArray))
 (start $~start)
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $2
   i32.eqz
   if
    i32.const 0
    local.get $0
    i32.const 22028
    i32.lt_u
    local.get $0
    i32.load offset=8
    select
    i32.eqz
    if
     i32.const 0
     i32.const 1056
     i32.const 127
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 131
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $2
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   i32.const 5424
   i32.load
   local.get $1
   i32.lt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 5428
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  local.get $3
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    i32.const 0
    local.get $3
    i32.const 3
    i32.eq
    select
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 3296
  call $~lib/rt/itcms/__visit
  i32.const 4416
  call $~lib/rt/itcms/__visit
  i32.const 4544
  call $~lib/rt/itcms/__visit
  i32.const 1488
  call $~lib/rt/itcms/__visit
  i32.const 2080
  call $~lib/rt/itcms/__visit
  i32.const 3136
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.set $3
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1616
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1616
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
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $3
   i32.const 1073741820
   local.get $3
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $5
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $5
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1616
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1616
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
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
  i32.const 22032
  i32.const 0
  i32.store
  i32.const 23600
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 22032
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 22032
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 22032
  i32.const 23604
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 22032
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $break|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/rt/itcms/state
       br_table $case0|0 $case1|0 $case2|0 $break|0
      end
      i32.const 1
      global.set $~lib/rt/itcms/state
      i32.const 0
      global.set $~lib/rt/itcms/visitCount
      call $~lib/rt/itcms/visitRoots
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/iter
      br $folding-inner0
     end
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.set $1
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|1
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       global.set $~lib/rt/itcms/iter
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        i32.const 0
        global.set $~lib/rt/itcms/visitCount
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
        br $folding-inner0
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|1
      end
     end
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.set $0
      loop $while-continue|0
       local.get $0
       i32.const 22028
       i32.lt_u
       if
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      global.get $~lib/rt/itcms/iter
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      loop $while-continue|2
       global.get $~lib/rt/itcms/toSpace
       local.get $0
       i32.ne
       if
        local.get $0
        i32.load offset=4
        i32.const 3
        i32.and
        local.get $1
        i32.ne
        if
         local.get $0
         local.get $1
         local.get $0
         i32.load offset=4
         i32.const -4
         i32.and
         i32.or
         i32.store offset=4
         local.get $0
         i32.const 20
         i32.add
         call $~lib/rt/__visit_members
        end
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        local.set $0
        br $while-continue|2
       end
      end
      global.get $~lib/rt/itcms/fromSpace
      local.set $0
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/fromSpace
      local.get $0
      global.set $~lib/rt/itcms/toSpace
      local.get $1
      global.set $~lib/rt/itcms/white
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      global.set $~lib/rt/itcms/iter
      i32.const 2
      global.set $~lib/rt/itcms/state
     end
     br $folding-inner0
    end
    global.get $~lib/rt/itcms/iter
    local.tee $0
    global.get $~lib/rt/itcms/toSpace
    i32.ne
    if
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.get $1
     i32.const 3
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 1056
      i32.const 228
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 22028
     i32.lt_u
     if
      local.get $0
      i32.const 0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store offset=8
     else
      global.get $~lib/rt/itcms/total
      local.get $0
      i32.load
      i32.const -4
      i32.and
      i32.const 4
      i32.add
      i32.sub
      global.set $~lib/rt/itcms/total
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      i32.const 22028
      i32.ge_u
      if
       global.get $~lib/rt/tlsf/ROOT
       i32.eqz
       if
        call $~lib/rt/tlsf/initialize
       end
       global.get $~lib/rt/tlsf/ROOT
       local.get $0
       i32.const 4
       i32.sub
       local.set $1
       local.get $0
       i32.const 15
       i32.and
       i32.const 1
       local.get $0
       select
       if (result i32)
        i32.const 1
       else
        local.get $1
        i32.load
        i32.const 1
        i32.and
       end
       if
        i32.const 0
        i32.const 1616
        i32.const 559
        i32.const 3
        call $~lib/builtins/abort
        unreachable
       end
       local.get $1
       local.tee $0
       local.get $0
       i32.load
       i32.const 1
       i32.or
       i32.store
       local.get $0
       call $~lib/rt/tlsf/insertBlock
      end
     end
     i32.const 10
     return
    end
    global.get $~lib/rt/itcms/toSpace
    local.tee $0
    local.tee $1
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $0
    i32.store offset=8
    i32.const 0
    global.set $~lib/rt/itcms/state
   end
   i32.const 0
   return
  end
  global.get $~lib/rt/itcms/visitCount
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    local.get $1
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1616
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1616
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   local.tee $1
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1488
   i32.const 1056
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
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
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.tee $5
  local.get $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1488
   i32.const 1616
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   memory.size
   local.tee $4
   local.get $2
   i32.const 536870910
   i32.lt_u
   if (result i32)
    i32.const 1
    i32.const 27
    local.get $2
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    local.get $2
    i32.add
   else
    local.get $2
   end
   i32.const 4
   local.get $5
   i32.load offset=1568
   local.get $4
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $3
   local.get $4
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $5
   local.get $4
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $5
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    i32.const 0
    i32.const 1616
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $2
  i32.lt_u
  if
   i32.const 0
   i32.const 1616
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $3
  i32.load
  local.set $4
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1616
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $3
   local.get $4
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $2
   local.get $3
   i32.const 4
   i32.add
   i32.add
   local.tee $2
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $5
   local.get $2
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $3
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $3
   i32.const 4
   i32.add
   local.get $3
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   local.get $2
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $2
  local.get $3
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $3
  i32.or
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $3
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $3
  i32.const 20
  i32.add
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/number/U32#toString (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  local.get $1
  i32.const 36
  i32.gt_s
  local.get $1
  i32.const 2
  i32.lt_s
  select
  if
   i32.const 1296
   i32.const 1424
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/util/number/utoa32
   local.get $2
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1264
    local.set $0
    br $__inlined_func$~lib/util/number/utoa32
   end
   local.get $1
   i32.const 10
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $2
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $2
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $2
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $2
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $2
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.tee $1
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    loop $while-continue|0
     local.get $2
     i32.const 10000
     i32.ge_u
     if
      local.get $2
      i32.const 10000
      i32.rem_u
      local.set $7
      local.get $2
      i32.const 10000
      i32.div_u
      local.set $2
      local.get $1
      i32.const 4
      i32.sub
      local.tee $1
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      local.get $7
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 1660
      i32.add
      i64.load32_u
      local.get $7
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 1660
      i32.add
      i64.load32_u
      i64.const 32
      i64.shl
      i64.or
      i64.store
      br $while-continue|0
     end
    end
    local.get $2
    i32.const 100
    i32.ge_u
    if
     local.get $1
     i32.const 2
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $2
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1660
     i32.add
     i32.load
     i32.store
     local.get $2
     i32.const 100
     i32.div_u
     local.set $2
    end
    local.get $2
    i32.const 10
    i32.ge_u
    if
     local.get $1
     i32.const 2
     i32.sub
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $2
     i32.const 2
     i32.shl
     i32.const 1660
     i32.add
     i32.load
     i32.store
    else
     local.get $1
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $2
     i32.const 48
     i32.add
     i32.store16
    end
   else
    local.get $1
    i32.const 16
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 31
     local.get $2
     i32.clz
     i32.sub
     i32.const 2
     i32.shr_s
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
     local.get $2
     i64.extend_i32_u
     local.set $3
     loop $while-continue|00
      local.get $1
      i32.const 2
      i32.ge_u
      if
       local.get $1
       i32.const 2
       i32.sub
       local.tee $1
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       local.get $3
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 2
       i32.shl
       i32.const 2080
       i32.add
       i32.load
       i32.store
       local.get $3
       i64.const 8
       i64.shr_u
       local.set $3
       br $while-continue|00
      end
     end
     local.get $1
     i32.const 1
     i32.and
     if
      local.get $0
      local.get $3
      i32.wrap_i64
      i32.const 6
      i32.shl
      i32.const 2080
      i32.add
      i32.load16_u
      i32.store16
     end
    else
     global.get $~lib/memory/__stack_pointer
     block $__inlined_func$~lib/util/number/ulog_base (result i32)
      local.get $2
      i64.extend_i32_u
      local.tee $3
      local.set $4
      local.get $1
      i32.popcnt
      i32.const 1
      i32.eq
      if
       i32.const 63
       local.get $4
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
       br $__inlined_func$~lib/util/number/ulog_base
      end
      local.get $1
      i64.extend_i32_s
      local.tee $5
      local.set $6
      i32.const 1
      local.set $0
      loop $while-continue|01
       local.get $4
       local.get $6
       i64.ge_u
       if
        local.get $4
        local.get $6
        i64.div_u
        local.set $4
        local.get $6
        local.get $6
        i64.mul
        local.set $6
        local.get $0
        i32.const 1
        i32.shl
        local.set $0
        br $while-continue|01
       end
      end
      loop $while-continue|1
       local.get $4
       i64.const 1
       i64.ge_u
       if
        local.get $4
        local.get $5
        i64.div_u
        local.set $4
        local.get $0
        i32.const 1
        i32.add
        local.set $0
        br $while-continue|1
       end
      end
      local.get $0
      i32.const 1
      i32.sub
     end
     local.tee $2
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
     local.get $1
     i64.extend_i32_s
     local.set $5
     local.get $1
     i32.const 1
     i32.sub
     local.get $1
     i32.and
     if
      loop $do-loop|1
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       local.get $3
       local.get $5
       local.get $3
       local.get $5
       i64.div_u
       local.tee $3
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 1
       i32.shl
       i32.const 3136
       i32.add
       i32.load16_u
       i32.store16
       local.get $3
       i64.const 0
       i64.ne
       br_if $do-loop|1
      end
     else
      local.get $1
      i32.ctz
      i32.const 7
      i32.and
      i64.extend_i32_s
      local.set $6
      local.get $5
      i64.const 1
      i64.sub
      local.set $5
      loop $do-loop|0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       local.get $3
       local.get $5
       i64.and
       i32.wrap_i64
       i32.const 1
       i32.shl
       i32.const 3136
       i32.add
       i32.load16_u
       i32.store16
       local.get $3
       local.get $6
       i64.shr_u
       local.tee $3
       i64.const 0
       i64.ne
       br_if $do-loop|0
      end
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
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
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
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
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
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
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $4
      local.get $3
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
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $4
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
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
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $4
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
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
    local.set $5
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
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
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $4
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
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
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $4
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.tee $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $3
   i32.const 2
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $4
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.tee $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $3
   i32.const 2
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $4
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store
  local.get $5
  i32.const 0
  i32.store offset=8
  block $__inlined_func$~lib/util/string/joinStringArray
   local.get $3
   i32.const 1
   i32.sub
   local.tee $5
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 3232
    local.set $3
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   local.get $5
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.load
    local.tee $0
    i32.store
    local.get $3
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    i32.const 3232
    local.get $0
    select
    local.set $3
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.tee $6
     i32.store offset=4
     local.get $6
     if
      local.get $6
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.get $2
      i32.add
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.const 3228
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $6
   i32.mul
   local.get $2
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store offset=8
   i32.const 0
   local.set $4
   loop $for-loop|1
    local.get $4
    local.get $5
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.tee $2
     i32.store offset=4
     local.get $2
     if
      local.get $1
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      local.get $2
      local.get $2
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $2
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $1
      local.get $2
      i32.add
      local.set $1
     end
     local.get $6
     if
      local.get $1
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      i32.const 3232
      local.get $6
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $1
      local.get $6
      i32.add
      local.set $1
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load
   local.tee $0
   i32.store offset=4
   local.get $0
   if
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $3
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      local.get $2
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      local.get $4
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      local.get $6
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      local.get $5
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    local.get $3
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     local.get $2
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     local.get $2
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   i32.const 15
   i32.shr_u
   local.get $2
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   i32.const 13
   i32.shr_u
   local.get $0
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   i32.const 16
   i32.shr_u
   local.get $0
   i32.xor
  else
   i32.const 0
  end
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.const 2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 3296
    i32.const 3344
    i32.const 18
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.set $1
   block $__inlined_func$~lib/rt/itcms/__renew (result i32)
    local.get $2
    if
     local.get $4
     i32.const 1
     i32.shl
     local.tee $2
     i32.const 1073741820
     local.get $2
     i32.const 1073741820
     i32.lt_u
     select
     local.tee $2
     local.get $1
     local.get $1
     local.get $2
     i32.lt_u
     select
     local.set $1
    end
    local.get $1
    local.tee $2
    local.get $0
    i32.load
    local.tee $6
    local.tee $5
    i32.const 20
    i32.sub
    local.tee $3
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $3
     local.get $2
     i32.store offset=16
     local.get $5
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $2
    local.get $3
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $7
    local.get $5
    local.get $2
    local.get $3
    i32.load offset=16
    local.tee $3
    local.get $2
    local.get $3
    i32.lt_u
    select
    call $~lib/memory/memory.copy
    local.get $7
   end
   local.tee $2
   local.get $4
   i32.add
   local.get $1
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $6
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1152
    i32.const 3344
    i32.const 123
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
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
  i32.store offset=12
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1152
   i32.const 3344
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
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $folding-inner0
      block $invalid
       block $~lib/array/Array<u32>
        block $~lib/function/Function<%28%29=>void>
         block $~lib/array/Array<i32>
          block $src/index/World
           block $src/index/InsideWorld
            block $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>
             block $~lib/staticarray/StaticArray<~lib/string/String>
              block $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String>
               block $src/RelativeIndexable/RelativeIndexable<u32>
                block $src/Archetype/Archetype
                 block $~lib/string/String
                  block $~lib/arraybuffer/ArrayBuffer
                   local.get $0
                   i32.const 8
                   i32.sub
                   i32.load
                   br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner2 $src/Archetype/Archetype $folding-inner0 $folding-inner3 $src/RelativeIndexable/RelativeIndexable<u32> $folding-inner2 $folding-inner1 $folding-inner2 $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/typedarray/Uint32Array%29=>~lib/string/String> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/map/Map<~lib/string/String,src/Archetype/Archetype> $folding-inner3 $folding-inner2 $folding-inner0 $folding-inner0 $src/index/InsideWorld $src/index/World $folding-inner0 $folding-inner0 $~lib/array/Array<i32> $~lib/function/Function<%28%29=>void> $~lib/array/Array<u32> $folding-inner1 $folding-inner1 $folding-inner1 $invalid
                  end
                  return
                 end
                 return
                end
                local.get $0
                local.tee $1
                i32.load
                local.tee $0
                if
                 local.get $0
                 call $~lib/rt/itcms/__visit
                end
                local.get $1
                i32.load offset=4
                local.tee $0
                if
                 local.get $0
                 call $~lib/rt/itcms/__visit
                end
                local.get $1
                i32.load offset=8
                local.tee $0
                if
                 local.get $0
                 call $~lib/rt/itcms/__visit
                end
                local.get $1
                i32.load offset=12
                local.tee $1
                if
                 local.get $1
                 call $~lib/rt/itcms/__visit
                end
                return
               end
               return
              end
              local.get $0
              i32.load offset=4
              call $~lib/rt/itcms/__visit
              return
             end
             local.get $0
             local.tee $1
             local.get $0
             i32.const 20
             i32.sub
             i32.load offset=16
             i32.add
             local.set $2
             loop $while-continue|0
              local.get $1
              local.get $2
              i32.lt_u
              if
               local.get $1
               i32.load
               local.tee $0
               if
                local.get $0
                call $~lib/rt/itcms/__visit
               end
               local.get $1
               i32.const 4
               i32.add
               local.set $1
               br $while-continue|0
              end
             end
             return
            end
            local.get $0
            i32.load
            call $~lib/rt/itcms/__visit
            local.get $0
            i32.load offset=16
            i32.const 12
            i32.mul
            local.get $0
            i32.load offset=8
            local.tee $1
            local.tee $0
            i32.add
            local.set $2
            loop $while-continue|01
             local.get $0
             local.get $2
             i32.lt_u
             if
              local.get $0
              i32.load offset=8
              i32.const 1
              i32.and
              i32.eqz
              if
               local.get $0
               i32.load
               call $~lib/rt/itcms/__visit
               local.get $0
               i32.load offset=4
               call $~lib/rt/itcms/__visit
              end
              local.get $0
              i32.const 12
              i32.add
              local.set $0
              br $while-continue|01
             end
            end
            local.get $1
            call $~lib/rt/itcms/__visit
            return
           end
           return
          end
          local.get $0
          local.tee $1
          i32.load
          local.tee $0
          if
           local.get $0
           call $~lib/rt/itcms/__visit
          end
          local.get $1
          i32.load offset=4
          local.tee $0
          if
           local.get $0
           call $~lib/rt/itcms/__visit
          end
          local.get $1
          i32.load offset=8
          local.tee $0
          if
           local.get $0
           call $~lib/rt/itcms/__visit
          end
          local.get $1
          i32.load offset=20
          local.tee $0
          if
           local.get $0
           call $~lib/rt/itcms/__visit
          end
          local.get $1
          i32.load offset=24
          local.tee $0
          if
           local.get $0
           call $~lib/rt/itcms/__visit
          end
          local.get $1
          i32.load offset=28
          local.tee $0
          if
           local.get $0
           call $~lib/rt/itcms/__visit
          end
          local.get $1
          i32.load offset=32
          local.tee $1
          if
           local.get $1
           call $~lib/rt/itcms/__visit
          end
          return
         end
         local.get $0
         i32.load
         call $~lib/rt/itcms/__visit
         return
        end
        local.get $0
        i32.load offset=4
        call $~lib/rt/itcms/__visit
        return
       end
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       return
      end
      unreachable
     end
     local.get $0
     local.tee $1
     i32.load offset=4
     local.tee $2
     local.get $0
     i32.load offset=12
     i32.const 2
     i32.shl
     i32.add
     local.set $3
     loop $while-continue|07
      local.get $2
      local.get $3
      i32.lt_u
      if
       local.get $2
       i32.load
       local.tee $0
       if
        local.get $0
        call $~lib/rt/itcms/__visit
       end
       local.get $2
       i32.const 4
       i32.add
       local.set $2
       br $while-continue|07
      end
     end
     local.get $1
     i32.load
     call $~lib/rt/itcms/__visit
     return
    end
    local.get $0
    i32.load
    local.tee $0
    if
     local.get $0
     call $~lib/rt/itcms/__visit
    end
    return
   end
   local.get $0
   i32.load
   local.tee $0
   if
    local.get $0
    call $~lib/rt/itcms/__visit
   end
   return
  end
  local.get $0
  local.tee $1
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  local.get $1
  i32.load offset=4
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~start
  i32.const 1108
  i32.const 1104
  i32.store
  i32.const 1112
  i32.const 1104
  i32.store
  i32.const 1104
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  i32.const 22028
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1540
  i32.const 1536
  i32.store
  i32.const 1544
  i32.const 1536
  i32.store
  i32.const 1536
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1572
  i32.const 1568
  i32.store
  i32.const 1576
  i32.const 1568
  i32.store
  i32.const 1568
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $src/BitMask/BitMask#toString~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $1
   i32.const 16
   call $~lib/number/U32#toString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/string/String#concat
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee $3
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee $4
    i32.add
    local.tee $1
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3232
     local.set $1
     br $__inlined_func$~lib/string/String#concat
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $1
    local.get $2
    local.get $3
    call $~lib/memory/memory.copy
    local.get $1
    local.get $3
    i32.add
    local.get $0
    local.get $4
    call $~lib/memory/memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/BitMask/BitMask#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.load
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1264
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $1
   i32.const 3264
   i32.store offset=4
   local.get $1
   i32.const 3232
   i32.store offset=8
   i32.const 0
   local.set $0
   i32.const 3232
   local.set $3
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $2
   i32.load offset=4
   local.set $1
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $4
   loop $for-loop|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load
     local.get $0
     local.get $2
     i32.const 3264
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.tee $3
     i32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/Vector/Vector#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load8_u offset=12
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load offset=8
   local.get $1
   i32.gt_u
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3904
   i32.store offset=4
   i32.const 3908
   local.get $0
   i32.store
   i32.const 3904
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 3904
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=8
   i32.const 3904
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3936
   i32.const 56
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.ge_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4096
   i32.store offset=4
   i32.const 4100
   local.get $0
   i32.store
   i32.const 4096
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 4096
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=8
   i32.const 4096
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3936
   i32.const 57
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load
  i32.load offset=4
  i32.add
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/Vector/Vector#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.load8_u offset=12
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load offset=8
   local.get $1
   i32.gt_u
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4128
   i32.store offset=4
   i32.const 4132
   local.get $0
   i32.store
   i32.const 4128
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 4128
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=8
   i32.const 4128
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3936
   i32.const 64
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.ge_u
  if
   loop $while-continue|0
    local.get $0
    i32.load offset=4
    local.get $1
    i32.le_u
    if
     local.get $0
     local.get $0
     i32.load offset=4
     f32.convert_i32_u
     local.get $0
     f32.load offset=16
     f32.mul
     f64.promote_f32
     f64.ceil
     i32.trunc_f64_u
     i32.store offset=4
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store offset=12
   local.get $0
   local.get $0
   i32.load offset=4
   call $~lib/typedarray/Uint32Array#constructor
   local.tee $4
   i32.store
   local.get $0
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.load
   i32.load offset=4
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load offset=8
   i32.const 2
   i32.shr_u
   call $~lib/memory/memory.copy
  end
  local.get $1
  local.get $0
  i32.load
  i32.load offset=4
  i32.add
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/BitMask/BitMask#copy (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $1
  i32.const 0
  local.get $2
  i32.load offset=8
  i32.const 2
  i32.shr_u
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.store offset=4
  local.get $1
  i32.load
  i32.load offset=4
  local.get $0
  i32.load
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/BitMask/BitMask#xor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 5
  i32.shr_u
  local.tee $2
  local.get $0
  i32.load offset=4
  i32.ge_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store
   local.get $0
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   call $~lib/typedarray/Uint32Array#constructor
   local.tee $4
   i32.store
   local.get $0
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.load
   i32.load offset=4
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load offset=8
   i32.const 2
   i32.shr_u
   call $~lib/memory/memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.load
  local.tee $4
  i32.store offset=4
  local.get $3
  local.get $0
  i32.load
  local.tee $5
  i32.store offset=8
  local.get $2
  i32.const 2
  i32.shl
  local.tee $2
  local.get $4
  i32.load offset=4
  i32.add
  local.get $5
  i32.load offset=4
  local.get $2
  i32.add
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.xor
  i32.store
  local.get $3
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $5
  loop $while-continue|0
   local.get $5
   if
    local.get $5
    i32.load offset=8
    local.tee $6
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load
     local.tee $4
     i32.store
     block $__inlined_func$~lib/string/String.__eq (result i32)
      i32.const 1
      local.get $1
      local.tee $2
      local.get $4
      i32.eq
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $2
      i32.const 0
      local.get $4
      select
      i32.eqz
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $4
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $3
      local.get $2
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.ne
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      block $__inlined_func$~lib/util/string/compareImpl (result i32)
       local.get $4
       i32.const 7
       i32.and
       local.get $2
       i32.const 7
       i32.and
       i32.or
       i32.const 1
       local.get $3
       local.tee $0
       i32.const 4
       i32.ge_u
       select
       i32.eqz
       if
        loop $do-loop|0
         local.get $4
         i64.load
         local.get $2
         i64.load
         i64.eq
         if
          local.get $4
          i32.const 8
          i32.add
          local.set $4
          local.get $2
          i32.const 8
          i32.add
          local.set $2
          local.get $0
          i32.const 4
          i32.sub
          local.tee $0
          i32.const 4
          i32.ge_u
          br_if $do-loop|0
         end
        end
       end
       loop $while-continue|1
        local.get $0
        local.tee $3
        i32.const 1
        i32.sub
        local.set $0
        local.get $3
        if
         local.get $2
         i32.load16_u
         local.tee $3
         local.get $4
         i32.load16_u
         local.tee $7
         i32.ne
         if
          local.get $7
          local.get $3
          i32.sub
          br $__inlined_func$~lib/util/string/compareImpl
         end
         local.get $4
         i32.const 2
         i32.add
         local.set $4
         local.get $2
         i32.const 2
         i32.add
         local.set $2
         br $while-continue|1
        end
       end
       i32.const 0
      end
      i32.eqz
     end
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     return
    end
    local.get $6
    i32.const -2
    i32.and
    local.set $5
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $src/Query/Query#tryAddMatch (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $6
   i32.store
   local.get $6
   i32.load offset=12
   local.set $5
   loop $for-loop|0
    local.get $5
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $6
     i32.load offset=4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $2
     i32.store offset=4
     local.get $3
     local.get $1
     i32.load offset=8
     local.tee $3
     i32.store offset=8
     block $__inlined_func$src/Query/QueryMask#test@virtual
      block $default
       block $case2
        block $case1
         block $case0
          local.get $2
          i32.const 8
          i32.sub
          i32.load
          i32.const 24
          i32.sub
          br_table $case0 $case1 $case2 $default
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 5644
         i32.lt_s
         br_if $folding-inner0
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         i32.const 0
         i32.store
         local.get $4
         local.get $2
         i32.load
         local.tee $2
         i32.store
         local.get $3
         local.get $2
         call $src/BitMask/BitMask#isSuperSetOf
         local.set $2
         br $__inlined_func$src/Query/QueryMask#test@virtual
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 5644
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        i32.const 0
        i32.store
        local.get $4
        local.get $2
        i32.load
        local.tee $2
        i32.store
        local.get $3
        local.get $2
        call $src/BitMask/BitMask#isSubSetOf
        local.set $2
        br $__inlined_func$src/Query/QueryMask#test@virtual
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 5644
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       i32.const 0
       i32.store
       local.get $4
       local.get $2
       i32.load
       local.tee $2
       i32.store
       local.get $3
       local.get $2
       call $src/BitMask/BitMask#isSuperSetOf
       i32.eqz
       local.set $2
       br $__inlined_func$src/Query/QueryMask#test@virtual
      end
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      return
     end
     local.get $5
     i32.const 1
     i32.sub
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=12
   local.get $0
   local.get $1
   call $~lib/array/Array<src/Archetype/Archetype>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/Archetype/Archetype#transform (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store
  local.get $4
  i64.const 0
  i64.store offset=8
  local.get $4
  i32.const 0
  i32.store offset=16
  local.get $4
  local.get $0
  i32.load
  local.tee $4
  i32.store
  local.get $4
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $2
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store offset=4
  local.get $4
  call $src/BitMask/BitMask#copy
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $5
  local.get $4
  local.get $1
  call $src/BitMask/BitMask#xor
  local.tee $5
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $src/BitMask/BitMask#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $4
  local.get $4
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find
  local.tee $4
  i32.eqz
  if
   i32.const 4544
   i32.const 4608
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  local.tee $4
  i32.store offset=12
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $5
   call $src/Archetype/Archetype#constructor
   local.tee $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $5
   i32.store
   local.get $5
   local.get $1
   local.get $0
   call $~lib/array/Array<src/Archetype/Archetype>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=12
   local.tee $5
   i32.store offset=4
   local.get $2
   local.get $5
   local.get $4
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set
   loop $for-loop|0
    local.get $3
    i32.load offset=12
    local.get $6
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load offset=4
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $2
     i32.store offset=16
     local.get $2
     local.get $4
     call $src/Query/Query#tryAddMatch
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  local.get $4
  call $~lib/array/Array<src/Archetype/Archetype>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/BitMask/BitMask#or (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 5
  i32.shr_u
  local.tee $2
  local.get $0
  i32.load offset=4
  i32.ge_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store
   local.get $0
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   call $~lib/typedarray/Uint32Array#constructor
   local.tee $4
   i32.store
   local.get $0
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.load
   i32.load offset=4
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load offset=8
   i32.const 2
   i32.shr_u
   call $~lib/memory/memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.load
  local.tee $4
  i32.store offset=4
  local.get $3
  local.get $0
  i32.load
  local.tee $5
  i32.store offset=8
  local.get $2
  i32.const 2
  i32.shl
  local.tee $2
  local.get $4
  i32.load offset=4
  i32.add
  local.get $5
  i32.load offset=4
  local.get $2
  i32.add
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.or
  i32.store
  local.get $3
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/BitMask/BitMask#not (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  local.get $0
  i32.load offset=8
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.get $2
   i32.gt_u
   if
    local.get $1
    i32.load
    i32.load offset=4
    local.get $2
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/BitMask/BitMask#union (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i32.const 0
  local.get $0
  i32.load offset=8
  f64.convert_i32_u
  local.get $1
  i32.load offset=8
  f64.convert_i32_u
  f64.max
  i32.trunc_f64_u
  call $src/BitMask/BitMask#constructor
  local.tee $3
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.get $2
   i32.gt_u
   if
    local.get $2
    local.get $3
    i32.load
    i32.load offset=4
    i32.add
    local.get $2
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    local.get $2
    local.get $1
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    i32.or
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/BitMask/BitMask#intersection (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  local.get $0
  i32.load offset=8
  f64.convert_i32_u
  local.get $1
  i32.load offset=8
  f64.convert_i32_u
  f64.min
  i32.trunc_f64_u
  call $src/BitMask/BitMask#constructor
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.get $3
   i32.gt_u
   if
    local.get $3
    local.get $2
    i32.load
    i32.load offset=4
    i32.add
    local.get $3
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    local.get $3
    local.get $1
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    i32.and
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/BitMask/BitMask#isSuperSetOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $1
  i32.load
  local.tee $4
  i32.store
  local.get $4
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $2
  local.get $0
  i32.load
  local.tee $2
  i32.store
  block $folding-inner0
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.get $4
   i32.lt_s
   br_if $folding-inner0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load
    local.tee $2
    i32.store
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shr_u
    local.get $3
    i32.gt_u
    if
     local.get $3
     local.get $1
     i32.load
     i32.load offset=4
     i32.add
     i32.load
     local.tee $2
     local.get $3
     local.get $0
     i32.load
     i32.load offset=4
     i32.add
     i32.load
     i32.and
     local.get $2
     i32.ne
     br_if $folding-inner0
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $src/BitMask/BitMask#isSubSetOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $1
  i32.load
  local.tee $4
  i32.store
  local.get $4
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $2
  local.get $0
  i32.load
  local.tee $2
  i32.store
  block $folding-inner0
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.get $4
   i32.gt_s
   br_if $folding-inner0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shr_u
    local.get $3
    i32.gt_u
    if
     local.get $3
     local.get $0
     i32.load
     i32.load offset=4
     i32.add
     i32.load
     local.tee $2
     local.get $3
     local.get $1
     i32.load
     i32.load offset=4
     i32.add
     i32.load
     i32.and
     local.get $2
     i32.ne
     br_if $folding-inner0
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $src/index/World#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 37
    i32.const 18
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $src/index/InsideWorld#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 3
   i32.store offset=4
   local.get $1
   i32.const 48
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 4
   i32.store offset=12
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.const 4
   i32.const 4656
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.const 0
   i32.const 256
   call $src/SparseSet/SparseSet#constructor
   local.tee $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 16
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 32
   call $~lib/memory/memory.fill
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $1
   i32.const 32
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=20
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 16
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 32
   call $~lib/memory/memory.fill
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $1
   i32.const 32
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=24
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.const 20
   i32.const 4688
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=28
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   i32.const 0
   i32.const 1
   call $src/BitMask/BitMask#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 0
   local.get $1
   call $src/Archetype/Archetype#constructor
   local.tee $1
   i32.store offset=32
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   i32.const 0
   i32.store8 offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/World#createEntity (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i64.const 0
  i64.store offset=16
  local.get $2
  i64.const 0
  i64.store offset=24
  local.get $0
  i32.load8_u offset=36
  i32.eqz
  if
   i32.const 4720
   i32.const 4784
   i32.const 137
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.load offset=8
  local.tee $1
  i32.store
  local.get $2
  local.get $1
  i32.load
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.load offset=8
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.store offset=4
   local.get $2
   local.get $1
   i32.load
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=8
   i32.eqz
   if
    i32.const 4160
    i32.const 3936
    i32.const 79
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $1
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=8
   i32.const 1
   i32.sub
   i32.store offset=8
   local.get $1
   i32.load offset=4
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $2
  else
   local.get $0
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.load offset=32
  local.tee $6
  i32.store
  local.get $3
  local.get $6
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  local.get $3
  local.get $1
  i32.load offset=4
  local.tee $3
  i32.store offset=16
  local.get $3
  i32.load offset=4
  local.get $2
  i32.gt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=8
   local.get $3
   local.get $2
   call $src/Vector/Vector#__get
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $4
   i32.store offset=16
   local.get $4
   i32.load offset=8
   local.get $3
   i32.gt_u
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.load
   local.tee $4
   i32.store offset=8
   local.get $3
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=20
   local.get $4
   local.get $3
   local.get $2
   call $src/Vector/Vector#__get
   call $src/Vector/Vector#__get
   local.get $2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.load offset=4
   local.tee $4
   i32.store offset=8
   local.get $3
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=24
   local.get $1
   i32.load offset=8
   local.tee $3
   local.get $1
   i32.load offset=4
   i32.ge_u
   if
    loop $while-continue|0
     local.get $1
     i32.load offset=4
     local.get $3
     i32.le_u
     if
      local.get $1
      local.get $1
      i32.load offset=4
      f32.convert_i32_u
      local.get $1
      f32.load offset=16
      f32.mul
      f64.promote_f32
      f64.ceil
      i32.trunc_f64_u
      i32.store offset=4
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load
    local.tee $3
    i32.store offset=28
    local.get $1
    local.get $1
    i32.load offset=4
    call $~lib/typedarray/Uint32Array#constructor
    local.tee $5
    i32.store
    local.get $1
    local.get $5
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $1
    i32.load
    i32.load offset=4
    local.get $3
    i32.load offset=4
    local.get $3
    i32.load offset=8
    i32.const 2
    i32.shr_u
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $3
   i32.store offset=20
   local.get $1
   local.get $1
   i32.load offset=8
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=8
   local.get $3
   i32.load offset=4
   local.get $5
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store
   local.get $4
   local.get $2
   local.get $1
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#__set
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $6
  call $~lib/array/Array<src/Archetype/Archetype>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/index/World#deleteEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i64.const 0
  i64.store offset=16
  local.get $2
  i64.const 0
  i64.store offset=24
  local.get $2
  i32.const 0
  i32.store offset=32
  local.get $2
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $2
  local.get $4
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.load offset=4
  local.get $1
  i32.gt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $2
   i32.store offset=8
   local.get $2
   local.get $1
   call $src/Vector/Vector#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.load offset=8
   local.get $2
   i32.gt_u
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $4
   i32.load
   local.tee $3
   i32.store offset=8
   local.get $2
   local.get $4
   i32.load offset=4
   local.tee $2
   i32.store offset=12
   local.get $3
   local.get $2
   local.get $1
   call $src/Vector/Vector#__get
   call $src/Vector/Vector#__get
   local.get $1
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.store offset=8
  local.get $2
  local.get $4
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.tee $2
  i32.store
  local.get $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4944
   i32.store offset=8
   i32.const 4948
   local.get $0
   i32.store
   i32.const 4944
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 4944
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=12
   i32.const 4944
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 4784
   i32.const 153
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.load offset=4
  local.tee $4
  i32.store offset=20
  local.get $3
  local.get $4
  i32.load offset=4
  local.tee $3
  i32.store offset=24
  local.get $1
  local.tee $2
  local.get $3
  i32.load offset=4
  i32.lt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $3
   i32.store offset=8
   local.get $3
   local.get $1
   call $src/Vector/Vector#__get
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $5
   i32.store offset=24
   local.get $5
   i32.load offset=8
   local.get $3
   i32.gt_u
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $4
   i32.load
   local.tee $5
   i32.store offset=8
   local.get $3
   local.get $4
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $5
   local.get $3
   local.get $1
   call $src/Vector/Vector#__get
   call $src/Vector/Vector#__get
   local.get $1
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $3
   i32.store offset=24
   local.get $3
   i32.load offset=8
   i32.eqz
   if
    i32.const 4160
    i32.const 3936
    i32.const 79
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $5
   i32.store offset=8
   local.get $3
   local.get $3
   i32.load offset=8
   i32.const 1
   i32.sub
   i32.store offset=8
   local.get $5
   i32.load offset=4
   local.get $3
   i32.load offset=8
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $3
   i32.eqz
   if
    i32.const 4336
    i32.const 3680
    i32.const 57
    i32.const 26
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $3
   i32.ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store offset=8
    local.get $5
    local.get $2
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load
    local.tee $5
    i32.store offset=8
    local.get $5
    local.get $2
    local.get $3
    call $src/Vector/Vector#__set
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $4
    i32.store offset=8
    local.get $4
    local.get $3
    local.get $2
    call $src/Vector/Vector#__set
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.store offset=28
  local.get $2
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=20
  local.get $2
  i32.load offset=4
  local.get $1
  i32.gt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=8
   local.get $2
   local.get $1
   call $src/Vector/Vector#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=8
   local.get $2
   i32.gt_u
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.load
   local.tee $4
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=12
   local.get $4
   local.get $2
   local.get $1
   call $src/Vector/Vector#__get
   call $src/Vector/Vector#__get
   local.get $1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.load offset=4
   local.tee $4
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.load offset=8
   local.tee $2
   local.get $0
   i32.load offset=4
   i32.ge_u
   if
    loop $while-continue|0
     local.get $0
     i32.load offset=4
     local.get $2
     i32.le_u
     if
      local.get $0
      local.get $0
      i32.load offset=4
      f32.convert_i32_u
      local.get $0
      f32.load offset=16
      f32.mul
      f64.promote_f32
      f64.ceil
      i32.trunc_f64_u
      i32.store offset=4
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store offset=32
    local.get $0
    local.get $0
    i32.load offset=4
    call $~lib/typedarray/Uint32Array#constructor
    local.tee $3
    i32.store
    local.get $0
    local.get $3
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $0
    i32.load
    i32.load offset=4
    local.get $2
    i32.load offset=4
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shr_u
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=12
   local.get $0
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.const 1
   i32.add
   i32.store offset=8
   local.get $2
   i32.load offset=4
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.store
   local.get $4
   local.get $1
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.sub
   call $src/Vector/Vector#__set
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/Query/Query#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/index/World#setComponent (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $3
  i64.const 0
  i64.store offset=16
  local.get $3
  i64.const 0
  i64.store offset=24
  local.get $3
  i64.const 0
  i64.store offset=32
  local.get $3
  i32.const 0
  i32.store offset=40
  local.get $3
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $3
  local.get $4
  i32.load offset=4
  local.tee $5
  i32.store offset=4
  local.get $1
  local.tee $3
  local.get $5
  i32.load offset=4
  i32.lt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $5
   i32.store offset=8
   local.get $5
   local.get $3
   call $src/Vector/Vector#__get
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $6
   i32.store offset=4
   local.get $6
   i32.load offset=8
   local.get $5
   i32.gt_u
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.load
   local.tee $6
   i32.store offset=8
   local.get $5
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.store offset=12
   local.get $6
   local.get $4
   local.get $3
   call $src/Vector/Vector#__get
   call $src/Vector/Vector#__get
   local.get $3
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5152
   i32.store offset=8
   i32.const 5156
   local.get $0
   i32.store
   i32.const 5152
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 5152
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=12
   i32.const 5152
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 4784
   i32.const 167
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $0
  i32.load offset=4
  local.tee $5
  i32.store offset=8
  local.get $4
  local.get $5
  local.get $3
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.tee $6
  i32.store
  local.get $6
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 5184
   i32.store offset=8
   i32.const 5188
   local.get $0
   i32.store
   i32.const 5184
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 5184
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=12
   i32.const 5184
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 4784
   i32.const 170
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  block $src/BitMask/BitMask#has|inlined.2 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load offset=8
   local.tee $4
   i32.store offset=20
   i32.const 0
   local.get $2
   i32.const 5
   i32.shr_u
   local.tee $7
   local.get $4
   i32.load offset=4
   i32.ge_u
   br_if $src/BitMask/BitMask#has|inlined.2
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   local.get $7
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $2
   i32.shr_u
   i32.const 1
   i32.and
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.store offset=4
   local.get $5
   local.get $4
   i32.load offset=4
   local.tee $5
   i32.store offset=24
   local.get $5
   i32.load offset=4
   local.get $3
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store offset=8
    local.get $5
    local.get $3
    call $src/Vector/Vector#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load
    local.tee $7
    i32.store offset=24
    local.get $7
    i32.load offset=8
    local.get $5
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $4
    i32.load
    local.tee $7
    i32.store offset=8
    local.get $5
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store offset=12
    local.get $7
    local.get $5
    local.get $3
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $3
    i32.eq
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load
    local.tee $5
    i32.store offset=24
    local.get $5
    i32.load offset=8
    i32.eqz
    if
     i32.const 4160
     i32.const 3936
     i32.const 79
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load
    local.tee $7
    i32.store offset=8
    local.get $5
    local.get $5
    i32.load offset=8
    i32.const 1
    i32.sub
    i32.store offset=8
    local.get $7
    i32.load offset=4
    local.get $5
    i32.load offset=8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    i32.eqz
    if
     i32.const 4336
     i32.const 3680
     i32.const 57
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $5
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.tee $7
     i32.store offset=8
     local.get $7
     local.get $3
     call $src/Vector/Vector#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load
     local.tee $8
     i32.store offset=8
     local.get $8
     local.get $7
     local.get $5
     call $src/Vector/Vector#__set
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.tee $4
     i32.store offset=8
     local.get $4
     local.get $5
     local.get $7
     call $src/Vector/Vector#__set
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.load
   local.tee $5
   i32.store offset=28
   local.get $4
   local.get $0
   i32.load offset=24
   local.tee $7
   i32.store offset=32
   local.get $4
   local.get $6
   local.get $2
   local.get $5
   local.get $7
   call $src/Archetype/Archetype#transform
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load offset=4
   local.tee $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $6
   i32.store offset=20
   local.get $3
   local.tee $4
   local.get $6
   i32.load offset=4
   i32.lt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $6
    i32.store offset=8
    local.get $6
    local.get $4
    call $src/Vector/Vector#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load
    local.tee $7
    i32.store offset=20
    local.get $7
    i32.load offset=8
    local.get $6
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $2
    i32.load
    local.tee $7
    i32.store offset=8
    local.get $6
    local.get $2
    i32.load offset=4
    local.tee $6
    i32.store offset=12
    local.get $7
    local.get $6
    local.get $4
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $4
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $2
    i32.load offset=4
    local.tee $4
    i32.store offset=8
    local.get $6
    local.get $2
    i32.load
    local.tee $2
    i32.store offset=4
    local.get $2
    i32.load offset=8
    local.tee $6
    local.get $2
    i32.load offset=4
    i32.ge_u
    if
     loop $while-continue|0
      local.get $2
      i32.load offset=4
      local.get $6
      i32.le_u
      if
       local.get $2
       local.get $2
       i32.load offset=4
       f32.convert_i32_u
       local.get $2
       f32.load offset=16
       f32.mul
       f64.promote_f32
       f64.ceil
       i32.trunc_f64_u
       i32.store offset=4
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $6
     i32.store offset=40
     local.get $2
     local.get $2
     i32.load offset=4
     call $~lib/typedarray/Uint32Array#constructor
     local.tee $7
     i32.store
     local.get $2
     local.get $7
     i32.const 0
     call $~lib/rt/itcms/__link
     local.get $2
     i32.load
     i32.load offset=4
     local.get $6
     i32.load offset=4
     local.get $6
     i32.load offset=8
     i32.const 2
     i32.shr_u
     call $~lib/memory/memory.copy
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load
    local.tee $6
    i32.store offset=12
    local.get $2
    local.get $2
    i32.load offset=8
    local.tee $7
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $6
    i32.load offset=4
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store
    local.get $4
    local.get $3
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#__set
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=8
   local.get $0
   local.get $1
   local.get $5
   call $~lib/array/Array<src/Archetype/Archetype>#__set
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 44
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
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $3
  i64.const 0
  i64.store offset=16
  local.get $3
  i64.const 0
  i64.store offset=24
  local.get $3
  i64.const 0
  i64.store offset=32
  local.get $3
  i32.const 0
  i32.store offset=40
  local.get $3
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $3
  local.get $4
  i32.load offset=4
  local.tee $5
  i32.store offset=4
  local.get $1
  local.tee $3
  local.get $5
  i32.load offset=4
  i32.lt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $5
   i32.store offset=8
   local.get $5
   local.get $3
   call $src/Vector/Vector#__get
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $6
   i32.store offset=4
   local.get $6
   i32.load offset=8
   local.get $5
   i32.gt_u
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.load
   local.tee $6
   i32.store offset=8
   local.get $5
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.store offset=12
   local.get $6
   local.get $4
   local.get $3
   call $src/Vector/Vector#__get
   call $src/Vector/Vector#__get
   local.get $3
   i32.eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5216
   i32.store offset=8
   i32.const 5220
   local.get $0
   i32.store
   i32.const 5216
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 5216
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=12
   i32.const 5216
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 4784
   i32.const 182
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $0
  i32.load offset=4
  local.tee $5
  i32.store offset=8
  local.get $4
  local.get $5
  local.get $3
  call $~lib/array/Array<src/Archetype/Archetype>#__get
  local.tee $6
  i32.store
  local.get $6
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 5248
   i32.store offset=8
   i32.const 5252
   local.get $0
   i32.store
   i32.const 5248
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 5248
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=12
   i32.const 5248
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 4784
   i32.const 185
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  block $src/BitMask/BitMask#has|inlined.3 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load offset=8
   local.tee $4
   i32.store offset=20
   i32.const 0
   local.get $2
   i32.const 5
   i32.shr_u
   local.tee $7
   local.get $4
   i32.load offset=4
   i32.ge_u
   br_if $src/BitMask/BitMask#has|inlined.3
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   local.get $7
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $2
   i32.shr_u
   i32.const 1
   i32.and
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $6
   i32.load offset=4
   local.tee $4
   i32.store offset=4
   local.get $5
   local.get $4
   i32.load offset=4
   local.tee $5
   i32.store offset=24
   local.get $5
   i32.load offset=4
   local.get $3
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store offset=8
    local.get $5
    local.get $3
    call $src/Vector/Vector#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load
    local.tee $7
    i32.store offset=24
    local.get $7
    i32.load offset=8
    local.get $5
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $4
    i32.load
    local.tee $7
    i32.store offset=8
    local.get $5
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store offset=12
    local.get $7
    local.get $5
    local.get $3
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $3
    i32.eq
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load
    local.tee $5
    i32.store offset=24
    local.get $5
    i32.load offset=8
    i32.eqz
    if
     i32.const 4160
     i32.const 3936
     i32.const 79
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load
    local.tee $7
    i32.store offset=8
    local.get $5
    local.get $5
    i32.load offset=8
    i32.const 1
    i32.sub
    i32.store offset=8
    local.get $7
    i32.load offset=4
    local.get $5
    i32.load offset=8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    i32.eqz
    if
     i32.const 4336
     i32.const 3680
     i32.const 57
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $5
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.tee $7
     i32.store offset=8
     local.get $7
     local.get $3
     call $src/Vector/Vector#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load
     local.tee $8
     i32.store offset=8
     local.get $8
     local.get $7
     local.get $5
     call $src/Vector/Vector#__set
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.tee $4
     i32.store offset=8
     local.get $4
     local.get $5
     local.get $7
     call $src/Vector/Vector#__set
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.load
   local.tee $5
   i32.store offset=28
   local.get $4
   local.get $0
   i32.load offset=24
   local.tee $7
   i32.store offset=32
   local.get $4
   local.get $6
   local.get $2
   local.get $5
   local.get $7
   call $src/Archetype/Archetype#transform
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load offset=4
   local.tee $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $6
   i32.store offset=20
   local.get $3
   local.tee $4
   local.get $6
   i32.load offset=4
   i32.lt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $6
    i32.store offset=8
    local.get $6
    local.get $4
    call $src/Vector/Vector#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load
    local.tee $7
    i32.store offset=20
    local.get $7
    i32.load offset=8
    local.get $6
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $2
    i32.load
    local.tee $7
    i32.store offset=8
    local.get $6
    local.get $2
    i32.load offset=4
    local.tee $6
    i32.store offset=12
    local.get $7
    local.get $6
    local.get $4
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $4
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $2
    i32.load offset=4
    local.tee $4
    i32.store offset=8
    local.get $6
    local.get $2
    i32.load
    local.tee $2
    i32.store offset=4
    local.get $2
    i32.load offset=8
    local.tee $6
    local.get $2
    i32.load offset=4
    i32.ge_u
    if
     loop $while-continue|0
      local.get $2
      i32.load offset=4
      local.get $6
      i32.le_u
      if
       local.get $2
       local.get $2
       i32.load offset=4
       f32.convert_i32_u
       local.get $2
       f32.load offset=16
       f32.mul
       f64.promote_f32
       f64.ceil
       i32.trunc_f64_u
       i32.store offset=4
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $6
     i32.store offset=40
     local.get $2
     local.get $2
     i32.load offset=4
     call $~lib/typedarray/Uint32Array#constructor
     local.tee $7
     i32.store
     local.get $2
     local.get $7
     i32.const 0
     call $~lib/rt/itcms/__link
     local.get $2
     i32.load
     i32.load offset=4
     local.get $6
     i32.load offset=4
     local.get $6
     i32.load offset=8
     i32.const 2
     i32.shr_u
     call $~lib/memory/memory.copy
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load
    local.tee $6
    i32.store offset=12
    local.get $2
    local.get $2
    i32.load offset=8
    local.tee $7
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $6
    i32.load offset=4
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store
    local.get $4
    local.get $3
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#__set
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=8
   local.get $0
   local.get $1
   local.get $5
   call $~lib/array/Array<src/Archetype/Archetype>#__set
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 16
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 3296
   i32.const 3344
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/RelativeIndexable/RelativeIndexable<u32>#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint32Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 12
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
   end
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 268435455
   i32.gt_u
   if
    i32.const 3296
    i32.const 3392
    i32.const 18
    i32.const 57
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2
   i32.shl
   local.tee $2
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store offset=4
   local.get $0
   local.get $2
   call $~lib/memory/memory.fill
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/Vector/Vector#constructor (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store8 offset=12
  local.get $0
  f32.const 0
  f32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/RelativeIndexable/RelativeIndexable<u32>#constructor
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $2
  f64.const 1.1
  f64.max
  f32.demote_f64
  f32.store offset=16
  local.get $0
  local.get $3
  i32.store8 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/SparseSet/SparseSet#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/RelativeIndexable/RelativeIndexable<u32>#constructor
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  local.get $1
  f64.const 1.5
  i32.const 0
  call $src/Vector/Vector#constructor
  local.tee $2
  i32.store
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  local.get $1
  f64.const 1.5
  i32.const 1
  call $src/Vector/Vector#constructor
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/Archetype/Archetype#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#constructor
  local.tee $2
  i32.store
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  i32.const 1024
  call $src/SparseSet/SparseSet#constructor
  local.tee $2
  i32.store offset=4
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#toString
  local.tee $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1152
   i32.const 3344
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
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 4416
   i32.const 3344
   i32.const 111
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/BitMask/BitMask#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  f64.convert_i32_u
  f64.const 0.03125
  f64.mul
  f64.ceil
  i32.trunc_f64_u
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=4
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 3296
   i32.const 3392
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  call $~lib/memory/memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set (param $0 i32) (param $1 i32) (param $2 i32)
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
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $1
   call $~lib/util/hash/HASH<~lib/string/String>
   local.tee $7
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find
   local.tee $3
   if
    local.get $3
    local.get $2
    i32.store offset=4
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
     local.set $10
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 5644
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     local.get $10
     i32.const 1
     i32.add
     local.tee $3
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $8
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $6
     i32.const 12
     i32.mul
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $4
     i32.store offset=4
     local.get $0
     i32.load offset=8
     local.tee $11
     local.get $0
     i32.load offset=16
     i32.const 12
     i32.mul
     i32.add
     local.set $5
     local.get $4
     local.set $3
     loop $while-continue|0
      local.get $5
      local.get $11
      i32.ne
      if
       local.get $11
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.load
        local.tee $9
        i32.store offset=8
        local.get $3
        local.get $9
        i32.store
        local.get $3
        local.get $11
        i32.load offset=4
        i32.store offset=4
        local.get $3
        local.get $9
        call $~lib/util/hash/HASH<~lib/string/String>
        local.get $10
        i32.and
        i32.const 2
        i32.shl
        local.get $8
        i32.add
        local.tee $9
        i32.load
        i32.store offset=8
        local.get $9
        local.get $3
        i32.store
        local.get $3
        i32.const 12
        i32.add
        local.set $3
       end
       local.get $11
       i32.const 12
       i32.add
       local.set $11
       br $while-continue|0
      end
     end
     local.get $0
     local.get $8
     i32.store
     local.get $0
     local.get $8
     i32.const 0
     call $~lib/rt/itcms/__link
     local.get $0
     local.get $10
     i32.store offset=4
     local.get $0
     local.get $4
     i32.store offset=8
     local.get $0
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     local.get $0
     local.get $6
     i32.store offset=12
     local.get $0
     local.get $0
     i32.load offset=20
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.store
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $10
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $10
    i32.const 12
    i32.mul
    local.get $3
    i32.add
    local.tee $3
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $3
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $0
    local.get $0
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    local.get $3
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    local.get $7
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $0
    i32.load
    i32.store offset=8
    local.get $0
    local.get $3
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/index/InsideWorld#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $1
  if
   local.get $2
   local.get $1
   i32.const 0
   call $~lib/memory/memory.copy
  end
  local.get $3
  local.get $2
  i32.store
  i32.const 16
  local.get $0
  call $~lib/rt/itcms/__new
  local.tee $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/Query/QueryMask#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/Query/Every#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 4
  i32.const 24
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $0
  call $src/Query/QueryMask#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/Query/Some#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 4
  i32.const 25
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $0
  call $src/Query/QueryMask#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/Query/Query#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#constructor
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/Archetype/Archetype#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Archetype/Archetype#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Archetype/Archetype#get:mask (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Archetype/Archetype#set:mask (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
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
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Archetype/Archetype#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $1
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.load offset=8
   local.get $1
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Archetype/Archetype#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $2
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=4
   local.get $1
   local.get $2
   i32.load offset=8
   i32.ge_u
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.const 10
    call $~lib/number/U32#toString
    local.tee $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3648
    i32.store offset=8
    i32.const 3652
    local.get $0
    i32.store
    i32.const 3648
    local.get $0
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 3648
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 3232
    i32.store offset=12
    i32.const 3648
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 3680
    i32.const 35
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=8
   local.get $0
   local.get $1
   call $src/Vector/Vector#__get
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Archetype/Archetype#hasComponent (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   block $src/BitMask/BitMask#has|inlined.0 (result i32)
    local.get $2
    local.get $0
    i32.load offset=8
    local.tee $0
    i32.store
    i32.const 0
    local.get $1
    i32.const 5
    i32.shr_u
    local.tee $2
    local.get $0
    i32.load offset=4
    i32.ge_u
    br_if $src/BitMask/BitMask#has|inlined.0
    drop
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $0
    i32.store offset=4
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.shr_u
    i32.const 1
    i32.and
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Archetype/Archetype#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   local.get $1
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=8
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $3
    i32.load offset=8
    local.get $2
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=8
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=12
    local.get $3
    local.get $0
    local.get $1
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $1
    i32.eq
   else
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Archetype/Archetype#addEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   i64.const 0
   i64.store offset=16
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   local.get $1
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=8
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $3
    i32.load offset=8
    local.get $2
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=8
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=12
    local.get $3
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $1
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load offset=4
    local.tee $3
    i32.store offset=8
    local.get $2
    local.get $0
    i32.load
    local.tee $0
    i32.store offset=16
    local.get $0
    i32.load offset=8
    local.tee $2
    local.get $0
    i32.load offset=4
    i32.ge_u
    if
     loop $while-continue|0
      local.get $0
      i32.load offset=4
      local.get $2
      i32.le_u
      if
       local.get $0
       local.get $0
       i32.load offset=4
       f32.convert_i32_u
       local.get $0
       f32.load offset=16
       f32.mul
       f64.promote_f32
       f64.ceil
       i32.trunc_f64_u
       i32.store offset=4
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $2
     i32.store offset=20
     local.get $0
     local.get $0
     i32.load offset=4
     call $~lib/typedarray/Uint32Array#constructor
     local.tee $4
     i32.store
     local.get $0
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     local.get $0
     i32.load
     i32.load offset=4
     local.get $2
     i32.load offset=4
     local.get $2
     i32.load offset=8
     i32.const 2
     i32.shr_u
     call $~lib/memory/memory.copy
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=8
    local.tee $4
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $2
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    i32.store
    local.get $3
    local.get $1
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#__set
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Archetype/Archetype#removeEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   local.get $1
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=8
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $3
    i32.load offset=8
    local.get $2
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=8
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=12
    local.get $3
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $1
    i32.eq
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store offset=4
    local.get $2
    i32.load offset=8
    i32.eqz
    if
     i32.const 4160
     i32.const 3936
     i32.const 79
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load
    local.tee $3
    i32.store offset=8
    local.get $2
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.sub
    i32.store offset=8
    local.get $3
    i32.load offset=4
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $2
    i32.eqz
    if
     i32.const 4336
     i32.const 3680
     i32.const 57
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $3
     i32.store offset=8
     local.get $3
     local.get $1
     call $src/Vector/Vector#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store offset=8
     local.get $3
     local.get $1
     local.get $2
     call $src/Vector/Vector#__set
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=8
     local.get $0
     local.get $2
     local.get $1
     call $src/Vector/Vector#__set
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Archetype/Archetype#get:entities (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.load
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Archetype/Archetype#transform (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $0
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/Archetype/Archetype#transform
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#get:_mask (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#set:_mask (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#set:maxValue (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$src/BitMask/BitMask#has
    local.get $1
    i32.const 5
    i32.shr_u
    local.tee $2
    local.get $0
    i32.load offset=4
    i32.ge_u
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     local.set $0
     br $__inlined_func$src/BitMask/BitMask#has
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.load
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.shr_u
    i32.const 1
    i32.and
    local.set $0
    local.get $3
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/BitMask/BitMask#__grow (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $1
   i32.le_u
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $1
    call $~lib/typedarray/Uint32Array#constructor
    local.tee $1
    i32.store
    local.get $0
    local.get $1
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $0
    i32.load
    i32.load offset=4
    local.get $2
    i32.load offset=4
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shr_u
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/BitMask/BitMask#xor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#xor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#or (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#or
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#and (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 5
   i32.shr_u
   local.tee $2
   local.get $0
   i32.load offset=4
   i32.ge_u
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint32Array#constructor
    local.tee $4
    i32.store
    local.get $0
    local.get $4
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $0
    i32.load
    i32.load offset=4
    local.get $3
    i32.load offset=4
    local.get $3
    i32.load offset=8
    i32.const 2
    i32.shr_u
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $3
   local.get $0
   i32.load
   local.tee $5
   i32.store offset=8
   local.get $2
   i32.const 2
   i32.shl
   local.tee $2
   local.get $4
   i32.load offset=4
   i32.add
   local.get $5
   i32.load offset=4
   local.get $2
   i32.add
   i32.load
   i32.const 1
   local.get $1
   i32.shl
   i32.and
   i32.store
   local.get $3
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/BitMask/BitMask#not (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#not
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#union (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#union
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#intersection (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#intersection
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#isSuperSetOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#isSuperSetOf
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#isSubSetOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#isSubSetOf
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#toString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#toString
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/BitMask/BitMask#copy (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/BitMask/BitMask#copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/InsideWorld#hasEntity (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  unreachable
 )
 (func $export:src/index/InsideWorld#createEntity (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  unreachable
 )
 (func $export:src/index/InsideWorld#deleteEntity (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  unreachable
 )
 (func $export:src/index/InsideWorld#defer (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  unreachable
 )
 (func $export:src/index/InsideWorld#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/InsideWorld#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $2
   local.get $3
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   local.get $1
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=4
    local.tee $2
    i32.store offset=8
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load
    local.tee $4
    i32.store offset=4
    local.get $4
    i32.load offset=8
    local.get $2
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $3
    i32.load
    local.tee $4
    i32.store offset=8
    local.get $2
    local.get $3
    i32.load offset=4
    local.tee $3
    i32.store offset=12
    local.get $4
    local.get $3
    local.get $1
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $1
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=8
    local.get $0
    local.get $1
    call $~lib/array/Array<src/Archetype/Archetype>#__get
    i32.eqz
    i32.eqz
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/index/World#createEntity (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/World#createEntity
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#deleteEntity (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=28
   local.tee $0
   i32.store
   local.get $0
   local.get $1
   call $~lib/array/Array<src/Archetype/Archetype>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/index/World#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/index/World#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/index/World#_executeDeferredActions (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.load offset=28
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   if
    loop $for-loop|0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.tee $1
     i32.store
     local.get $1
     i32.load offset=12
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=28
      local.tee $1
      i32.store
      local.get $1
      i32.load offset=4
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.load
      call_indirect $0 (type $none_=>_none)
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=28
    local.tee $0
    i32.store
    local.get $0
    i32.const 0
    i32.const 0
    call $~lib/array/ensureCapacity
    local.get $0
    i32.const 0
    i32.store offset=12
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/index/World#registerSystem (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   local.get $2
   i32.store offset=8
   local.get $4
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $3
   local.get $0
   i32.load offset=20
   local.tee $3
   i32.store
   local.get $3
   local.get $1
   call $~lib/array/Array<src/Archetype/Archetype>#push
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=24
   local.tee $1
   i32.store
   local.get $1
   local.get $2
   call $~lib/array/Array<src/Archetype/Archetype>#push
   local.get $0
   i32.load8_u offset=36
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.load
    local.tee $2
    i32.store
    i32.const 0
    local.set $3
    local.get $1
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 5644
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i64.const 0
    i64.store
    local.get $2
    i32.load offset=8
    local.set $8
    local.get $4
    local.get $2
    i32.load offset=16
    local.tee $4
    call $~lib/array/Array<src/Archetype/Archetype>#constructor
    local.tee $2
    i32.store
    loop $for-loop|0
     local.get $4
     local.get $5
     i32.gt_s
     if
      local.get $5
      i32.const 12
      i32.mul
      local.get $8
      i32.add
      local.tee $7
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.load offset=4
       local.tee $7
       i32.store offset=4
       local.get $2
       local.get $3
       local.get $7
       call $~lib/array/Array<src/Archetype/Archetype>#__set
       local.get $3
       i32.const 1
       i32.add
       local.set $3
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $for-loop|0
     end
    end
    local.get $2
    local.get $3
    i32.const 0
    call $~lib/array/ensureCapacity
    local.get $2
    local.get $3
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    i32.store offset=4
    loop $for-loop|00
     local.get $2
     i32.load offset=12
     local.get $6
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $6
      i32.const 2
      i32.shl
      local.tee $3
      local.get $2
      i32.load offset=4
      i32.add
      i32.load
      local.tee $5
      i32.store offset=8
      local.get $1
      local.get $0
      i32.load offset=24
      local.tee $4
      i32.store
      local.get $1
      local.get $4
      i32.load offset=4
      local.get $3
      i32.add
      i32.load
      local.tee $1
      i32.store offset=12
      local.get $1
      local.get $5
      call $src/Query/Query#tryAddMatch
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|00
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/index/World#init (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $0
   i32.load8_u offset=36
   if
    i32.const 4976
    i32.const 4784
    i32.const 81
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.load offset=16
   call $src/BitMask/BitMask#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 0
   local.get $1
   call $src/Archetype/Archetype#constructor
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=12
   local.tee $4
   i32.store
   local.get $3
   local.get $4
   local.get $1
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set
   local.get $0
   local.get $1
   i32.store offset=32
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=24
    local.tee $3
    i32.store offset=8
    local.get $3
    i32.load offset=12
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.load offset=24
     local.tee $4
     i32.store offset=8
     local.get $3
     local.get $4
     i32.load offset=4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $3
     i32.store offset=12
     local.get $3
     local.get $1
     call $src/Query/Query#tryAddMatch
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=28
   local.tee $2
   i32.store offset=8
   local.get $2
   i32.load offset=12
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.tee $1
     i32.store offset=8
     local.get $1
     i32.load offset=12
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=28
      local.tee $1
      i32.store offset=8
      local.get $1
      i32.load offset=4
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.load
      call_indirect $0 (type $none_=>_none)
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=28
    local.tee $0
    i32.store offset=8
    local.get $0
    i32.const 0
    i32.const 0
    call $~lib/array/ensureCapacity
    local.get $0
    i32.const 0
    i32.store offset=12
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/index/World#update (param $0 i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   i64.const 0
   i64.store offset=16
   local.get $1
   i64.const 0
   i64.store offset=24
   local.get $1
   local.get $0
   i32.load offset=20
   local.tee $5
   i32.store
   local.get $1
   local.get $0
   i32.load offset=24
   local.tee $7
   i32.store offset=4
   local.get $5
   i32.load offset=12
   local.set $8
   loop $for-loop|0
    local.get $3
    local.get $8
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $3
     i32.const 2
     i32.shl
     local.tee $2
     local.get $5
     i32.load offset=4
     i32.add
     i32.load
     local.tee $9
     i32.store offset=8
     local.get $1
     local.get $7
     i32.load offset=4
     local.get $2
     i32.add
     i32.load
     local.tee $6
     i32.store offset=12
     i32.const 0
     local.set $1
     local.get $6
     call $src/Query/Query#get:length
     local.set $10
     loop $for-loop|1
      local.get $1
      local.get $10
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $6
       i32.load
       local.tee $4
       i32.store offset=16
       local.get $2
       local.get $4
       i32.load offset=4
       local.get $1
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $4
       i32.store offset=20
       local.get $2
       local.get $4
       i32.load offset=4
       local.tee $11
       i32.store offset=24
       local.get $2
       local.get $11
       i32.load
       local.tee $2
       i32.store offset=28
       local.get $2
       i32.load offset=8
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $4
        i32.load offset=4
        local.tee $4
        i32.store offset=24
        local.get $2
        local.get $4
        i32.load
        local.tee $2
        i32.store offset=16
        local.get $2
        local.get $0
        local.get $9
        i32.load
        call_indirect $0 (type $i32_i32_=>_none)
       end
       local.get $1
       i32.const 1
       i32.add
       local.set $1
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
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=28
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    local.set $1
    loop $for-loop|2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.tee $3
     i32.store offset=16
     local.get $3
     i32.load offset=12
     local.get $1
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=28
      local.tee $3
      i32.store offset=16
      local.get $3
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.load
      call_indirect $0 (type $none_=>_none)
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|2
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=28
    local.tee $1
    i32.store offset=16
    local.get $1
    i32.const 0
    i32.const 0
    call $~lib/array/ensureCapacity
    local.get $1
    i32.const 0
    i32.store offset=12
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/index/World#hasComponent (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $3
   local.get $0
   local.get $1
   call $~lib/array/Array<src/Archetype/Archetype>#__get
   local.tee $0
   i32.store offset=4
   local.get $0
   if (result i32)
    block $src/BitMask/BitMask#has|inlined.1 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $1
     i32.store offset=8
     i32.const 0
     local.get $2
     i32.const 5
     i32.shr_u
     local.tee $3
     local.get $1
     i32.load offset=4
     i32.ge_u
     br_if $src/BitMask/BitMask#has|inlined.1
     drop
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load
     local.tee $0
     i32.store
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $2
     i32.shr_u
     i32.const 1
     i32.and
    end
   else
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/index/World#setComponent (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $export:src/Query/every (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 1
   call $src/BitMask/BitMask#constructor
   local.tee $1
   i32.store
   loop $for-loop|0
    local.get $0
    i32.load offset=12
    local.get $2
    i32.gt_s
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
   local.get $1
   call $src/Query/Every#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Query/some (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 1
   call $src/BitMask/BitMask#constructor
   local.tee $1
   i32.store
   loop $for-loop|0
    local.get $0
    i32.load offset=12
    local.get $2
    i32.gt_s
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
   local.get $1
   call $src/Query/Some#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Query/not (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 1
   call $src/BitMask/BitMask#constructor
   local.tee $1
   i32.store
   loop $for-loop|0
    local.get $0
    i32.load offset=12
    local.get $2
    i32.gt_s
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.const 26
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   call $src/Query/QueryMask#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Query/or (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.load offset=12
   i32.eqz
   if
    i32.const 5280
    i32.const 5360
    i32.const 58
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.load
   i32.load
   local.tee $4
   i32.store
   i32.const 1
   local.set $3
   loop $for-loop|0
    local.get $0
    i32.load offset=12
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $1
     i32.store offset=4
     local.get $2
     local.get $1
     i32.load
     local.tee $2
     i32.store offset=8
     local.get $1
     if (result i32)
      block $__inlined_func$~lib/rt/__instanceof (result i32)
       local.get $1
       i32.const 20
       i32.sub
       i32.load offset=12
       local.tee $1
       i32.const 5424
       i32.load
       i32.le_u
       if
        loop $do-loop|0
         i32.const 1
         local.get $1
         i32.const 26
         i32.eq
         br_if $__inlined_func$~lib/rt/__instanceof
         drop
         local.get $1
         i32.const 3
         i32.shl
         i32.const 5428
         i32.add
         i32.load offset=4
         local.tee $1
         br_if $do-loop|0
        end
       end
       i32.const 0
      end
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      call $src/BitMask/BitMask#not
      local.tee $2
      i32.store offset=8
     end
     global.get $~lib/memory/__stack_pointer
     local.get $4
     local.get $2
     call $src/BitMask/BitMask#intersection
     local.tee $4
     i32.store
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $4
   call $src/Query/Some#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Query/and (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.load offset=12
   i32.eqz
   if
    i32.const 5280
    i32.const 5360
    i32.const 72
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.load
   i32.load
   local.tee $4
   i32.store
   i32.const 1
   local.set $3
   loop $for-loop|0
    local.get $0
    i32.load offset=12
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $1
     i32.store offset=4
     local.get $2
     local.get $1
     i32.load
     local.tee $2
     i32.store offset=8
     local.get $1
     if (result i32)
      block $__inlined_func$~lib/rt/__instanceof (result i32)
       local.get $1
       i32.const 20
       i32.sub
       i32.load offset=12
       local.tee $1
       i32.const 5424
       i32.load
       i32.le_u
       if
        loop $do-loop|0
         i32.const 1
         local.get $1
         i32.const 26
         i32.eq
         br_if $__inlined_func$~lib/rt/__instanceof
         drop
         local.get $1
         i32.const 3
         i32.shl
         i32.const 5428
         i32.add
         i32.load offset=4
         local.tee $1
         br_if $do-loop|0
        end
       end
       i32.const 0
      end
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      call $src/BitMask/BitMask#not
      local.tee $2
      i32.store offset=8
     end
     global.get $~lib/memory/__stack_pointer
     local.get $4
     local.get $2
     call $src/BitMask/BitMask#union
     local.tee $4
     i32.store
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $4
   call $src/Query/Every#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Query/Query#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Query#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Query/Query#tryAddMatch (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/Query/Query#tryAddMatch
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Query/Query#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/Query/Query#get:length
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Query/Query#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   local.get $1
   call $~lib/array/Array<src/Archetype/Archetype>#__get
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Query/Query#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Query/createQuery (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 0
  local.get $0
  call $src/Query/Query#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/SparseSet/SparseSet#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=8
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/SparseSet/SparseSet#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/SparseSet/SparseSet#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/SparseSet/SparseSet#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.get $1
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=4
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store
    local.get $3
    i32.load offset=8
    local.get $2
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=8
    local.get $3
    local.get $0
    local.get $1
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $1
    i32.eq
   else
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/SparseSet/SparseSet#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $1
   local.get $2
   i32.load offset=8
   i32.ge_u
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.const 10
    call $~lib/number/U32#toString
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 5408
    i32.store offset=4
    i32.const 5412
    local.get $0
    i32.store
    i32.const 5408
    local.get $0
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 5408
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3232
    i32.store offset=8
    i32.const 5408
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 3680
    i32.const 35
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=4
   local.get $0
   local.get $1
   call $src/Vector/Vector#__get
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/SparseSet/SparseSet#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   i32.const 0
   i32.store offset=16
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.get $1
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=4
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store
    local.get $3
    i32.load offset=8
    local.get $2
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=8
    local.get $3
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $1
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load offset=4
    local.tee $5
    i32.store offset=4
    local.get $2
    local.get $0
    i32.load
    local.tee $2
    i32.store offset=12
    local.get $2
    i32.load offset=8
    local.tee $3
    local.get $2
    i32.load offset=4
    i32.ge_u
    if
     loop $while-continue|0
      local.get $2
      i32.load offset=4
      local.get $3
      i32.le_u
      if
       local.get $2
       local.get $2
       i32.load offset=4
       f32.convert_i32_u
       local.get $2
       f32.load offset=16
       f32.mul
       f64.promote_f32
       f64.ceil
       i32.trunc_f64_u
       i32.store offset=4
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $3
     i32.store offset=16
     local.get $2
     local.get $2
     i32.load offset=4
     call $~lib/typedarray/Uint32Array#constructor
     local.tee $4
     i32.store
     local.get $2
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     local.get $2
     i32.load
     i32.load offset=4
     local.get $3
     i32.load offset=4
     local.get $3
     i32.load offset=8
     i32.const 2
     i32.shr_u
     call $~lib/memory/memory.copy
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load
    local.tee $3
    i32.store offset=8
    local.get $2
    local.get $2
    i32.load offset=8
    local.tee $4
    i32.const 1
    i32.add
    i32.store offset=8
    local.get $3
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    i32.store
    local.get $5
    local.get $1
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.sub
    call $src/Vector/Vector#__set
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/SparseSet/SparseSet#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=8
   i32.eqz
   if
    i32.const 4160
    i32.const 3936
    i32.const 79
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.sub
   i32.store offset=8
   local.get $2
   i32.load offset=4
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $1
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/SparseSet/SparseSet#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.get $1
   i32.gt_u
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=4
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store
    local.get $3
    i32.load offset=8
    local.get $2
    i32.gt_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store offset=8
    local.get $3
    local.get $2
    local.get $1
    call $src/Vector/Vector#__get
    call $src/Vector/Vector#__get
    local.get $1
    i32.eq
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store
    local.get $2
    i32.load offset=8
    i32.eqz
    if
     i32.const 4160
     i32.const 3936
     i32.const 79
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load
    local.tee $3
    i32.store offset=4
    local.get $2
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.sub
    i32.store offset=8
    local.get $3
    i32.load offset=4
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $2
    i32.eqz
    if
     i32.const 4336
     i32.const 3680
     i32.const 57
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $3
     i32.store offset=4
     local.get $3
     local.get $1
     call $src/Vector/Vector#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store offset=4
     local.get $3
     local.get $1
     local.get $2
     call $src/Vector/Vector#__set
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $1
     call $src/Vector/Vector#__set
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Vector/Vector#constructor (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/Vector/Vector#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Vector/Vector#get:size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Vector/Vector#get:sparse (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load8_u offset=12
  i32.const 0
  i32.ne
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Vector/Vector#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/Vector/Vector#__get
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/Vector/Vector#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5644
  i32.lt_s
  if
   i32.const 22048
   i32.const 22096
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $export:src/Vector/Vector#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $0
   i32.load offset=8
   local.tee $2
   local.get $0
   i32.load offset=4
   i32.ge_u
   if
    loop $while-continue|0
     local.get $0
     i32.load offset=4
     local.get $2
     i32.le_u
     if
      local.get $0
      local.get $0
      i32.load offset=4
      f32.convert_i32_u
      local.get $0
      f32.load offset=16
      f32.mul
      f64.promote_f32
      f64.ceil
      i32.trunc_f64_u
      i32.store offset=4
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $2
    i32.store
    local.get $0
    local.get $0
    i32.load offset=4
    call $~lib/typedarray/Uint32Array#constructor
    local.tee $3
    i32.store
    local.get $0
    local.get $3
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $0
    i32.load
    i32.load offset=4
    local.get $2
    i32.load offset=4
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shr_u
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.load
   local.tee $3
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=8
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=8
   local.get $3
   i32.load offset=4
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.store
   local.get $0
   i32.load offset=8
   local.get $2
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Vector/Vector#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=8
   i32.eqz
   if
    i32.const 4160
    i32.const 3936
    i32.const 79
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $0
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.sub
   i32.store offset=8
   local.get $2
   i32.load offset=4
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/Vector/Vector#subArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5644
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$src/Vector/Vector#subArray
    local.get $0
    i32.load8_u offset=12
    if
     local.get $0
     i32.load
     local.set $0
     br $__inlined_func$src/Vector/Vector#subArray
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.load
    local.tee $2
    i32.store
    local.get $0
    i32.load offset=8
    local.set $3
    local.get $1
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 5644
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $2
    i32.load offset=8
    i32.const 2
    i32.shr_u
    local.set $1
    local.get $0
    i32.const 12
    i32.const 8
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    local.get $0
    local.get $2
    i32.load
    local.tee $4
    i32.store
    local.get $0
    local.get $4
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $0
    local.get $2
    i32.load offset=4
    i32.const 0
    local.get $1
    local.get $1
    select
    local.tee $2
    i32.const 2
    i32.shl
    i32.add
    i32.store offset=4
    local.get $0
    local.get $3
    i32.const 0
    i32.lt_s
    if (result i32)
     local.get $1
     local.get $3
     i32.add
     local.tee $1
     i32.const 0
     local.get $1
     i32.const 0
     i32.gt_s
     select
    else
     local.get $3
     local.get $1
     local.get $1
     local.get $3
     i32.gt_s
     select
    end
    local.tee $1
    local.get $2
    local.get $1
    local.get $2
    i32.gt_s
    select
    local.get $2
    i32.sub
    i32.const 2
    i32.shl
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22048
  i32.const 22096
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
