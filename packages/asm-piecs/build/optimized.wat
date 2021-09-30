(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $src/Query/ArrayU32_ID i32 (i32.const 3))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $src/ComponentSet/flagComponentSet_ID i32 (i32.const 21))
 (global $src/ComponentSet/i8ComponentSet_ID i32 (i32.const 22))
 (global $src/ComponentSet/i16ComponentSet_ID i32 (i32.const 24))
 (global $src/ComponentSet/i32ComponentSet_ID i32 (i32.const 26))
 (global $src/ComponentSet/u8ComponentSet_ID i32 (i32.const 27))
 (global $src/ComponentSet/u16ComponentSet_ID i32 (i32.const 29))
 (global $src/ComponentSet/u32ComponentSet_ID i32 (i32.const 31))
 (global $src/ComponentSet/f32ComponentSet_ID i32 (i32.const 32))
 (global $src/Archetype/Archetype i32 (i32.const 4))
 (global $src/BitMask/BitMask i32 (i32.const 8))
 (global $src/index/World i32 (i32.const 18))
 (global $src/Query/QueryMask i32 (i32.const 15))
 (global $src/Query/QueryMaskGroup i32 (i32.const 14))
 (global $src/Query/Query i32 (i32.const 12))
 (global $src/SparseSet/SparseSet i32 (i32.const 6))
 (global $src/ComponentSet/FlagComponentSet i32 (i32.const 21))
 (global $src/ComponentSet/ComponentSet<i8> i32 (i32.const 22))
 (global $src/ComponentSet/ComponentSet<i16> i32 (i32.const 24))
 (global $src/ComponentSet/ComponentSet<i32> i32 (i32.const 26))
 (global $src/ComponentSet/ComponentSet<u8> i32 (i32.const 27))
 (global $src/ComponentSet/ComponentSet<u16> i32 (i32.const 29))
 (global $src/ComponentSet/ComponentSet<u32> i32 (i32.const 31))
 (global $src/ComponentSet/ComponentSet<f32> i32 (i32.const 32))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 4752))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\04\00\00\00-\000")
 (data (i32.const 1068) "|")
 (data (i32.const 1080) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 1196) "<")
 (data (i32.const 1208) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 1260) "\1c")
 (data (i32.const 1272) "\01\00\00\00\02\00\00\000")
 (data (i32.const 1292) "<")
 (data (i32.const 1304) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1356) "<")
 (data (i32.const 1368) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1420) "<")
 (data (i32.const 1432) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1508) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 1916) "\1c\04")
 (data (i32.const 1928) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 2972) "\\")
 (data (i32.const 2984) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3068) "\1c")
 (data (i32.const 3080) "\01")
 (data (i32.const 3100) "\1c")
 (data (i32.const 3112) "\t\00\00\00\08\00\00\00\01")
 (data (i32.const 3132) ",")
 (data (i32.const 3144) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 3180) "<")
 (data (i32.const 3192) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 3244) ",")
 (data (i32.const 3256) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 3292) "<")
 (data (i32.const 3304) "\01\00\00\00\"\00\00\00S\00p\00a\00r\00s\00e\00S\00e\00t\00:\00 \00I\00n\00d\00e\00x\00 ")
 (data (i32.const 3356) "|")
 (data (i32.const 3368) "\01\00\00\00b\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s\00.\00 \00C\00h\00e\00c\00k\00 \00S\00p\00a\00r\00s\00e\00S\00e\00t\00.\00l\00e\00n\00g\00t\00h\00 \00>\00 \00i\00n\00d\00e\00x")
 (data (i32.const 3484) "\1c")
 (data (i32.const 3496) "\n\00\00\00\0c\00\00\00\f0\0c\00\00\00\00\00\000\0d")
 (data (i32.const 3516) "<")
 (data (i32.const 3528) "\01\00\00\00 \00\00\00s\00r\00c\00/\00S\00p\00a\00r\00s\00e\00S\00e\00t\00.\00t\00s")
 (data (i32.const 3580) "<")
 (data (i32.const 3592) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 3644) ",")
 (data (i32.const 3656) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 3692) "<")
 (data (i32.const 3704) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3756) ",")
 (data (i32.const 3768) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 3804) "|")
 (data (i32.const 3816) "\01\00\00\00^\00\00\00A\00t\00t\00e\00m\00p\00t\00e\00d\00 \00t\00o\00 \00r\00e\00b\00u\00i\00l\00d\00 \00w\00o\00r\00l\00d\00,\00 \00t\00h\00i\00s\00 \00i\00s\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d")
 (data (i32.const 3932) ",")
 (data (i32.const 3944) "\01\00\00\00\18\00\00\00s\00r\00c\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 3980) "<")
 (data (i32.const 3992) "\01\00\00\00\1e\00\00\00N\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 4044) ",")
 (data (i32.const 4056) "\01\00\00\00\0e\00\00\00E\00n\00t\00i\00t\00y\00 ")
 (data (i32.const 4092) "<")
 (data (i32.const 4104) "\01\00\00\00\1e\00\00\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 4156) "\1c")
 (data (i32.const 4168) "\n\00\00\00\0c\00\00\00\e0\0f\00\00\00\00\00\00\10\10")
 (data (i32.const 4188) ",")
 (data (i32.const 4200) "\01\00\00\00\16\00\00\00 \00i\00s\00 \00d\00e\00l\00e\00t\00e\00d")
 (data (i32.const 4236) "\1c")
 (data (i32.const 4248) "\n\00\00\00\0c\00\00\00\e0\0f\00\00\00\00\00\00p\10")
 (data (i32.const 4268) "\1c")
 (data (i32.const 4280) "\n\00\00\00\0c\00\00\00\e0\0f\00\00\00\00\00\00\10\10")
 (data (i32.const 4300) "\1c")
 (data (i32.const 4312) "\n\00\00\00\0c\00\00\00\e0\0f\00\00\00\00\00\00p\10")
 (data (i32.const 4332) "\1c")
 (data (i32.const 4344) "\n\00\00\00\0c\00\00\00\e0\0f\00\00\00\00\00\00\10\10")
 (data (i32.const 4364) "\1c")
 (data (i32.const 4376) "\14\00\00\00\08\00\00\00\02")
 (data (i32.const 4396) "|")
 (data (i32.const 4408) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 4524) "\1c")
 (data (i32.const 4536) "\n\00\00\00\0c\00\00\00\f0\0c\00\00\00\00\00\000\0d")
 (data (i32.const 4556) "<")
 (data (i32.const 4568) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4652) "<")
 (data (i32.const 4664) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4752) "\"\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 4780) "\02\01")
 (data (i32.const 4796) "\10A\02")
 (data (i32.const 4812) "\02\t")
 (data (i32.const 4836) "\04A\00\00\00\00\00\00\10A\82")
 (data (i32.const 4860) "\02A")
 (data (i32.const 4884) "\02A\00\00\00\00\00\00\02A")
 (data (i32.const 4908) "\02a")
 (data (i32.const 4940) "B\08")
 (data (i32.const 4956) "\82\08")
 (data (i32.const 4980) "B")
 (data (i32.const 4996) "\82")
 (data (i32.const 5020) "\02\19")
 (table $0 3 funcref)
 (elem $0 (i32.const 1) $src/BitMask/BitMask#toString~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0)
 (export "Archetype" (global $src/Archetype/Archetype))
 (export "Archetype#constructor" (func $src/Archetype/Archetype#constructor))
 (export "Archetype#get:mask" (func $src/Archetype/Archetype#get:mask))
 (export "Archetype#set:mask" (func $src/Archetype/Archetype#set:mask))
 (export "Archetype#get:id" (func $src/Archetype/Archetype#get:id))
 (export "Archetype#get:length" (func $src/Archetype/Archetype#get:length))
 (export "Archetype#get" (func $src/Archetype/Archetype#get))
 (export "Archetype#__uget" (func $src/Archetype/Archetype#__uget))
 (export "Archetype#hasComponent" (func $src/Archetype/Archetype#hasComponent))
 (export "Archetype#hasEntity" (func $src/Archetype/Archetype#hasEntity))
 (export "Archetype#addEntity" (func $src/Archetype/Archetype#addEntity))
 (export "Archetype#removeEntity" (func $src/Archetype/Archetype#removeEntity))
 (export "Archetype#get:entities" (func $src/Archetype/Archetype#get:entities))
 (export "Archetype#transform" (func $src/Archetype/Archetype#transform))
 (export "BitMask" (global $src/BitMask/BitMask))
 (export "BitMask#constructor" (func $src/BitMask/BitMask#constructor))
 (export "BitMask#has" (func $src/BitMask/BitMask#has))
 (export "BitMask#__grow" (func $src/BitMask/BitMask#__grow))
 (export "BitMask#xor" (func $src/BitMask/BitMask#xor))
 (export "BitMask#or" (func $src/BitMask/BitMask#or))
 (export "BitMask#and" (func $src/BitMask/BitMask#and))
 (export "BitMask#not" (func $src/BitMask/BitMask#not))
 (export "BitMask#union" (func $src/BitMask/BitMask#union))
 (export "BitMask#intersection" (func $src/BitMask/BitMask#intersection))
 (export "BitMask#difference" (func $src/BitMask/BitMask#difference))
 (export "BitMask#symmetrictDifference" (func $src/BitMask/BitMask#symmetrictDifference))
 (export "BitMask#contains" (func $src/BitMask/BitMask#contains))
 (export "BitMask#intersects" (func $src/BitMask/BitMask#intersects))
 (export "BitMask#toString" (func $src/BitMask/BitMask#toString))
 (export "BitMask#copy" (func $src/BitMask/BitMask#copy))
 (export "World" (global $src/index/World))
 (export "World#getNextComponentId" (func $src/index/World#getNextComponentId))
 (export "World#registerQuery" (func $src/index/World#registerQuery))
 (export "World#init" (func $src/index/World#init))
 (export "World#hasEntity" (func $src/index/World#hasEntity))
 (export "World#createEntity" (func $src/index/World#createEntity))
 (export "World#deleteEntity" (func $src/index/World#deleteEntity))
 (export "World#hasComponent" (func $src/index/World#hasComponent))
 (export "World#setComponent" (func $src/index/World#setComponent))
 (export "World#removeComponent" (func $src/index/World#removeComponent))
 (export "World#constructor" (func $src/index/World#constructor))
 (export "ArrayU32_ID" (global $src/Query/ArrayU32_ID))
 (export "QueryMask" (global $src/Query/QueryMask))
 (export "QueryMask#get:type" (func $src/Query/QueryMask#get:type))
 (export "QueryMask#get:mask" (func $src/Archetype/Archetype#get:_entities))
 (export "QueryMask#constructor" (func $src/Query/QueryMask#constructor))
 (export "QueryMask#match" (func $src/Query/QueryMask#match))
 (export "QueryMaskGroup" (global $src/Query/QueryMaskGroup))
 (export "QueryMaskGroup#get:type" (func $src/Query/QueryMask#get:type))
 (export "QueryMaskGroup#get:subQueries" (func $src/Archetype/Archetype#get:_entities))
 (export "QueryMaskGroup#constructor" (func $src/Query/QueryMaskGroup#constructor))
 (export "QueryMaskGroup#match" (func $src/Query/QueryMaskGroup#match))
 (export "all" (func $src/Query/all))
 (export "any" (func $src/Query/any))
 (export "not" (func $src/Query/not))
 (export "and" (func $src/Query/and))
 (export "or" (func $src/Query/or))
 (export "Query" (global $src/Query/Query))
 (export "Query#constructor" (func $src/Query/Query#constructor))
 (export "Query#tryAdd" (func $src/Query/Query#tryAdd))
 (export "Query#get:length" (func $src/Query/Query#get:length))
 (export "Query#get" (func $src/Query/Query#get))
 (export "Query#__uget" (func $src/Query/Query#__uget))
 (export "SparseSet" (global $src/SparseSet/SparseSet))
 (export "SparseSet#constructor" (func $src/SparseSet/SparseSet#constructor))
 (export "SparseSet#get:values" (func $src/Archetype/Archetype#get:_transformations))
 (export "SparseSet#get:length" (func $src/Query/Query#get:length))
 (export "SparseSet#has" (func $src/SparseSet/SparseSet#has))
 (export "SparseSet#get" (func $src/SparseSet/SparseSet#get))
 (export "SparseSet#uget" (func $src/SparseSet/SparseSet#uget))
 (export "SparseSet#add" (func $src/SparseSet/SparseSet#add))
 (export "SparseSet#pop" (func $src/SparseSet/SparseSet#pop))
 (export "SparseSet#delete" (func $src/SparseSet/SparseSet#delete))
 (export "FlagComponentSet" (global $src/ComponentSet/FlagComponentSet))
 (export "FlagComponentSet#constructor" (func $src/ComponentSet/FlagComponentSet#constructor))
 (export "FlagComponentSet#get:id" (func $src/Archetype/Archetype#get:_transformations))
 (export "FlagComponentSet#add" (func $src/ComponentSet/FlagComponentSet#add))
 (export "FlagComponentSet#has" (func $src/ComponentSet/FlagComponentSet#has))
 (export "FlagComponentSet#remove" (func $src/ComponentSet/FlagComponentSet#remove))
 (export "ComponentSet<i8>" (global $src/ComponentSet/ComponentSet<i8>))
 (export "ComponentSet<i16>" (global $src/ComponentSet/ComponentSet<i16>))
 (export "ComponentSet<i32>" (global $src/ComponentSet/ComponentSet<i32>))
 (export "ComponentSet<u8>" (global $src/ComponentSet/ComponentSet<u8>))
 (export "ComponentSet<u16>" (global $src/ComponentSet/ComponentSet<u16>))
 (export "ComponentSet<u32>" (global $src/ComponentSet/ComponentSet<u32>))
 (export "ComponentSet<f32>" (global $src/ComponentSet/ComponentSet<f32>))
 (export "flagComponentSet_ID" (global $src/ComponentSet/flagComponentSet_ID))
 (export "i8ComponentSet_ID" (global $src/ComponentSet/i8ComponentSet_ID))
 (export "i16ComponentSet_ID" (global $src/ComponentSet/i16ComponentSet_ID))
 (export "i32ComponentSet_ID" (global $src/ComponentSet/i32ComponentSet_ID))
 (export "u8ComponentSet_ID" (global $src/ComponentSet/u8ComponentSet_ID))
 (export "u16ComponentSet_ID" (global $src/ComponentSet/u16ComponentSet_ID))
 (export "u32ComponentSet_ID" (global $src/ComponentSet/u32ComponentSet_ID))
 (export "f32ComponentSet_ID" (global $src/ComponentSet/f32ComponentSet_ID))
 (export "__new" (func $~lib/rt/tcms/__new))
 (export "__pin" (func $~lib/rt/tcms/__pin))
 (export "__unpin" (func $~lib/rt/tcms/__unpin))
 (export "__collect" (func $~lib/rt/tcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $src/Archetype/Archetype#set:mask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
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
   i32.const 1440
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
   i32.const 1440
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
   i32.const 1440
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
   i32.const 1440
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
   i32.const 1440
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
    i32.const 1440
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
   i32.const 1440
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
   i32.const 1440
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
   i32.const 1440
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
   i32.const 1440
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
    i32.const 1440
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
    i32.const 1440
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
  i32.const 5040
  i32.const 0
  i32.store
  i32.const 6608
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
    i32.const 5040
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
      i32.const 5040
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
  i32.const 5040
  i32.const 6612
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 5040
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1312
   i32.const 1440
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
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
   i32.const 1440
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
     i32.const 1440
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
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1440
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $3
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    local.get $1
    i32.add
   else
    local.get $1
   end
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $3
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
   local.tee $2
   local.get $2
   local.get $3
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $3
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1440
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $1
  i32.lt_u
  if
   i32.const 0
   i32.const 1440
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1312
   i32.const 1376
   i32.const 125
   i32.const 30
   call $~lib/builtins/abort
   unreachable
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
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $0
  local.get $2
  global.get $~lib/rt/tcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/tcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/tcms/total
  local.get $2
  i32.const 20
  i32.add
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 1508
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 1508
    i32.add
    i64.load32_u
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
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 1508
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 1508
   i32.add
   i32.load
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  i32.const 1
  local.get $1
  i32.const 36
  i32.gt_s
  local.get $1
  i32.const 2
  i32.lt_s
  select
  if
   i32.const 1088
   i32.const 1216
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 1280
   return
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   local.tee $1
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $1
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $1
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $1
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $1
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $1
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $0
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $7
   local.get $1
   local.get $0
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
    local.tee $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $7
    local.set $1
    local.get $0
    i64.extend_i32_u
    local.set $2
    loop $while-continue|0
     local.get $3
     i32.const 2
     i32.ge_u
     if
      local.get $3
      i32.const 2
      i32.sub
      local.tee $3
      i32.const 1
      i32.shl
      local.get $1
      i32.add
      local.get $2
      i32.wrap_i64
      i32.const 255
      i32.and
      i32.const 2
      i32.shl
      i32.const 1936
      i32.add
      i32.load
      i32.store
      local.get $2
      i64.const 8
      i64.shr_u
      local.set $2
      br $while-continue|0
     end
    end
    local.get $3
    i32.const 1
    i32.and
    if
     local.get $1
     local.get $2
     i32.wrap_i64
     i32.const 6
     i32.shl
     i32.const 1936
     i32.add
     i32.load16_u
     i32.store16
    end
   else
    block $__inlined_func$~lib/util/number/ulog_base (result i32)
     local.get $0
     i64.extend_i32_u
     local.tee $2
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
     loop $while-continue|00
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
       br $while-continue|00
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
    local.tee $0
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $7
    local.set $3
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
      local.get $0
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      local.get $2
      local.get $5
      local.get $2
      local.get $5
      i64.div_u
      local.tee $2
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.const 2992
      i32.add
      i32.load16_u
      i32.store16
      local.get $2
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
      local.get $0
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      local.get $2
      local.get $5
      i64.and
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.const 2992
      i32.add
      i32.load16_u
      i32.store16
      local.get $2
      local.get $6
      i64.shr_u
      local.tee $2
      i64.const 0
      i64.ne
      br_if $do-loop|0
     end
    end
   end
  end
  local.get $7
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
 (func $src/BitMask/BitMask#toString~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  block $__inlined_func$~lib/string/String#concat (result i32)
   local.get $1
   i32.const 16
   call $~lib/util/number/utoa32
   local.set $4
   i32.const 3088
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $1
   local.get $4
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.add
   local.tee $2
   i32.eqz
   br_if $__inlined_func$~lib/string/String#concat
   drop
   local.get $2
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/memory/memory.copy
   local.get $1
   local.get $2
   i32.add
   local.get $4
   local.get $3
   call $~lib/memory/memory.copy
   local.get $2
  end
 )
 (func $src/BitMask/BitMask#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  i32.load offset=12
  i32.eqz
  if
   i32.const 1056
   return
  end
  i32.const 3088
  local.set $1
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 0
   i32.ge_s
   if
    local.get $1
    local.get $2
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $0
    local.get $2
    i32.const 3120
    i32.load
    call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 3152
   i32.const 3200
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/array/Array<u32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  i32.store
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
   i32.const 3152
   i32.const 3264
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $3
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $src/SparseSet/SparseSet#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 6
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#constructor
  i32.store
  i32.const 16
  i32.const 7
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 268435455
  i32.gt_u
  if
   i32.const 3152
   i32.const 3264
   i32.const 65
   i32.const 60
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
  local.tee $3
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $4
  local.get $3
  call $~lib/memory/memory.fill
  local.get $2
  local.get $4
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $src/Archetype/Archetype#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 4
   call $~lib/rt/tcms/__new
   local.set $0
  end
  i32.const 24
  i32.const 5
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $2
  i32.const 3
  i32.store offset=4
  local.get $2
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $2
  i32.const 4
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=16
  local.get $2
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $2
  i32.store
  local.get $0
  i32.const 0
  i32.const 1024
  call $src/SparseSet/SparseSet#constructor
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.set $2
  block $__inlined_func$src/BitMask/BitMask#toString
   local.get $1
   i32.load
   i32.load offset=12
   i32.eqz
   if
    i32.const 1056
    local.set $0
    br $__inlined_func$src/BitMask/BitMask#toString
   end
   i32.const 3088
   local.set $0
   local.get $1
   i32.load
   local.tee $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|0
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $0
     local.get $3
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     local.get $3
     i32.const 3120
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|0
    end
   end
  end
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
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
 (func $src/Archetype/Archetype#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load
  i32.load offset=12
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   local.tee $1
   select
   local.tee $2
   local.tee $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.get $1
   i32.add
   local.tee $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $0
   local.get $2
   local.get $3
   call $~lib/util/number/utoa32_dec_lut
   local.get $1
   if
    local.get $0
    i32.const 45
    i32.store16
   end
  else
   i32.const 1280
   local.set $0
  end
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $__inlined_func$~lib/util/string/joinStringArray (result i32)
   i32.const 3088
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.tee $4
   i32.const 1
   i32.sub
   local.tee $6
   i32.const 0
   i32.lt_s
   br_if $__inlined_func$~lib/util/string/joinStringArray
   drop
   local.get $6
   i32.eqz
   if
    local.get $0
    i32.load
    local.tee $0
    if (result i32)
     local.get $0
    else
     i32.const 3088
    end
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.lt_s
    if
     local.get $3
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.tee $5
     if
      local.get $5
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.get $2
      i32.add
      local.set $2
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $6
   i32.const 3084
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $5
   i32.mul
   local.get $2
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tcms/__new
   local.set $4
   i32.const 0
   local.set $3
   loop $for-loop|1
    local.get $3
    local.get $6
    i32.lt_s
    if
     local.get $3
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.tee $2
     if
      local.get $1
      i32.const 1
      i32.shl
      local.get $4
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
     local.get $5
     if
      local.get $1
      i32.const 1
      i32.shl
      local.get $4
      i32.add
      i32.const 3088
      local.get $5
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $1
      local.get $5
      i32.add
      local.set $1
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
   local.get $6
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load
   local.tee $0
   if
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
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
   local.get $4
  end
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 3600
   i32.const 3264
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
 (func $src/Archetype/Archetype#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.load
  i32.load offset=12
  local.get $1
  i32.le_s
  if
   i32.const 3508
   local.get $1
   call $~lib/number/I32#toString
   i32.store
   i32.const 3504
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3536
   i32.const 33
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<u32>#__get
 )
 (func $src/Archetype/Archetype#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $src/Archetype/Archetype#hasComponent (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 5
  i32.shr_u
  local.tee $2
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.load offset=8
  i32.ge_u
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load
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
 )
 (func $src/Archetype/Archetype#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   local.get $2
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  i32.const 0
  i32.ne
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
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
   i32.const 1440
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/moveBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 5028
  i32.ge_u
  if
   local.get $1
   local.get $1
   i32.load
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  end
  local.get $2
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 3152
    i32.const 3264
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
   local.get $3
   local.set $4
   local.get $0
   i32.load
   local.tee $8
   local.set $3
   local.get $2
   if (result i32)
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
   else
    local.get $1
   end
   local.set $2
   local.get $3
   i32.const 20
   i32.sub
   local.set $5
   block $__inlined_func$~lib/rt/tcms/__renew
    local.get $3
    i32.const 5028
    i32.lt_u
    if
     local.get $2
     local.get $5
     i32.load offset=12
     call $~lib/rt/tcms/__new
     local.tee $1
     local.get $3
     local.get $2
     local.get $5
     i32.load offset=16
     local.tee $3
     local.get $2
     local.get $3
     i32.lt_u
     select
     call $~lib/memory/memory.copy
     br $__inlined_func$~lib/rt/tcms/__renew
    end
    local.get $2
    i32.const 1073741804
    i32.gt_u
    if
     i32.const 1312
     i32.const 1376
     i32.const 143
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/rt/tcms/total
    local.get $5
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.sub
    global.set $~lib/rt/tcms/total
    local.get $3
    i32.const 16
    i32.sub
    local.set $1
    local.get $2
    i32.const 16
    i32.add
    local.set $3
    global.get $~lib/rt/tlsf/ROOT
    i32.eqz
    if
     call $~lib/rt/tlsf/initialize
    end
    local.get $1
    i32.const 5028
    i32.lt_u
    if
     global.get $~lib/rt/tlsf/ROOT
     local.get $1
     call $~lib/rt/tlsf/checkUsedBlock
     local.get $3
     call $~lib/rt/tlsf/moveBlock
     local.set $1
    else
     block $__inlined_func$~lib/rt/tlsf/reallocateBlock
      global.get $~lib/rt/tlsf/ROOT
      local.set $5
      local.get $1
      call $~lib/rt/tlsf/checkUsedBlock
      local.set $1
      block $folding-inner0
       local.get $3
       call $~lib/rt/tlsf/prepareSize
       local.tee $7
       local.get $1
       i32.load
       local.tee $9
       i32.const -4
       i32.and
       local.tee $6
       i32.le_u
       br_if $folding-inner0
       local.get $1
       i32.const 4
       i32.add
       local.get $1
       i32.load
       i32.const -4
       i32.and
       i32.add
       local.tee $10
       i32.load
       local.tee $11
       i32.const 1
       i32.and
       if
        local.get $7
        local.get $6
        i32.const 4
        i32.add
        local.get $11
        i32.const -4
        i32.and
        i32.add
        local.tee $6
        i32.le_u
        if
         local.get $5
         local.get $10
         call $~lib/rt/tlsf/removeBlock
         local.get $1
         local.get $6
         local.get $9
         i32.const 3
         i32.and
         i32.or
         i32.store
         br $folding-inner0
        end
       end
       local.get $5
       local.get $1
       local.get $3
       call $~lib/rt/tlsf/moveBlock
       local.set $1
       br $__inlined_func$~lib/rt/tlsf/reallocateBlock
      end
      local.get $5
      local.get $1
      local.get $7
      call $~lib/rt/tlsf/prepareBlock
     end
    end
    local.get $1
    i32.const 20
    i32.add
    local.tee $1
    i32.const 20
    i32.sub
    local.tee $3
    local.get $2
    i32.store offset=16
    local.get $3
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $3
    i32.store offset=8
    local.get $3
    i32.load offset=8
    local.tee $5
    local.get $5
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $3
    i32.or
    i32.store offset=4
    global.get $~lib/rt/tcms/total
    local.get $3
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.add
    global.set $~lib/rt/tcms/total
   end
   local.get $1
   local.get $4
   i32.add
   local.get $2
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $8
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u32>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 3600
    i32.const 3264
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
 )
 (func $src/Archetype/Archetype#addEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   local.get $2
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  i32.eqz
  if
   local.get $2
   i32.load offset=4
   local.get $1
   local.get $2
   i32.load
   local.get $1
   call $~lib/array/Array<u32>#push
   i32.const 1
   i32.sub
   call $~lib/array/Array<i32>#__set
  end
 )
 (func $~lib/array/Array<u32>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3664
   i32.const 3264
   i32.const 284
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $src/Archetype/Archetype#removeEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   local.get $2
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  if
   local.get $1
   local.get $2
   i32.load
   call $~lib/array/Array<u32>#pop
   local.tee $0
   i32.ne
   if
    local.get $2
    i32.load
    i32.load offset=4
    local.get $2
    i32.load offset=4
    i32.load offset=4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    i32.store
    local.get $2
    i32.load offset=4
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    i32.store
   end
  end
 )
 (func $src/Archetype/Archetype#get:entities (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load
 )
 (func $src/BitMask/BitMask#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 8
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.get $1
  f64.convert_i32_u
  f64.const 1
  f64.max
  i32.trunc_f64_u
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=4
  f64.convert_i32_u
  f64.const 0.03125
  f64.mul
  f64.ceil
  i32.trunc_f64_u
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=8
  call $~lib/array/Array<u32>#constructor
  i32.store
  local.get $0
 )
 (func $src/BitMask/BitMask#copy (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  local.get $0
  i32.load offset=4
  call $src/BitMask/BitMask#constructor
  local.tee $1
  i32.load
  i32.load offset=4
  local.get $0
  i32.load
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $src/BitMask/BitMask#__grow (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.lt_u
  if
   local.get $0
   local.get $1
   i32.store offset=4
  else
   return
  end
  local.get $0
  i32.load offset=8
  local.get $1
  i32.const 5
  i32.shr_u
  i32.le_u
  if
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   f64.convert_i32_u
   f64.const 0.03125
   f64.mul
   f64.ceil
   i32.trunc_f64_u
   i32.store offset=8
   local.get $0
   i32.load
   local.tee $1
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $1
   local.get $0
   i32.store offset=12
  end
 )
 (func $src/BitMask/BitMask#xor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#__grow
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.const 5
  i32.shr_u
  i32.const 2
  i32.shl
  i32.add
  local.tee $2
  local.get $2
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.xor
  i32.store
  local.get $0
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
 (func $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
     block $__inlined_func$~lib/string/String.__eq (result i32)
      i32.const 1
      local.get $1
      local.get $5
      i32.load
      local.tee $2
      i32.eq
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $1
      i32.const 0
      local.get $2
      select
      i32.eqz
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $2
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $3
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.ne
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      block $__inlined_func$~lib/util/string/compareImpl (result i32)
       local.get $2
       i32.const 7
       i32.and
       local.get $1
       local.tee $4
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
         local.get $2
         i64.load
         local.get $4
         i64.load
         i64.eq
         if
          local.get $2
          i32.const 8
          i32.add
          local.set $2
          local.get $4
          i32.const 8
          i32.add
          local.set $4
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
          local.get $3
          local.get $7
          i32.sub
          br $__inlined_func$~lib/util/string/compareImpl
         end
         local.get $2
         i32.const 2
         i32.add
         local.set $2
         local.get $4
         i32.const 2
         i32.add
         local.set $4
         br $while-continue|1
        end
       end
       i32.const 0
      end
      i32.eqz
     end
    end
    if
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
  i32.const 0
 )
 (func $~lib/map/Map<u32,src/Archetype/Archetype>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.load
  local.get $1
  local.tee $4
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  local.get $1
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  local.get $1
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  local.get $1
  i32.const 16
  i32.shr_u
  i32.xor
  local.tee $9
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $1
  block $__inlined_func$~lib/map/Map<u32,src/Archetype/Archetype>#find
   loop $while-continue|0
    local.get $1
    if
     local.get $1
     i32.load offset=8
     local.tee $6
     i32.const 1
     i32.and
     if (result i32)
      i32.const 0
     else
      local.get $4
      local.get $1
      i32.load
      i32.eq
     end
     br_if $__inlined_func$~lib/map/Map<u32,src/Archetype/Archetype>#find
     local.get $6
     i32.const -2
     i32.and
     local.set $1
     br $while-continue|0
    end
   end
   i32.const 0
   local.set $1
  end
  local.get $1
  if
   local.get $1
   local.get $2
   i32.store offset=4
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
    local.tee $6
    i32.const 1
    i32.add
    local.tee $1
    i32.const 2
    i32.shl
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $8
    local.get $1
    i32.const 3
    i32.shl
    i32.const 3
    i32.div_s
    local.tee $10
    i32.const 12
    i32.mul
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $1
    local.get $0
    i32.load offset=8
    local.tee $7
    local.get $0
    i32.load offset=16
    i32.const 12
    i32.mul
    i32.add
    local.set $11
    local.get $1
    local.set $3
    loop $while-continue|00
     local.get $7
     local.get $11
     i32.ne
     if
      local.get $7
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $3
       local.get $7
       i32.load
       local.tee $5
       i32.store
       local.get $3
       local.get $7
       i32.load offset=4
       i32.store offset=4
       local.get $3
       local.get $5
       i32.const -1028477379
       i32.mul
       i32.const 374761397
       i32.add
       i32.const 17
       i32.rotl
       i32.const 668265263
       i32.mul
       local.tee $5
       local.get $5
       i32.const 15
       i32.shr_u
       i32.xor
       i32.const -2048144777
       i32.mul
       local.tee $5
       local.get $5
       i32.const 13
       i32.shr_u
       i32.xor
       i32.const -1028477379
       i32.mul
       local.tee $5
       local.get $5
       i32.const 16
       i32.shr_u
       i32.xor
       local.get $6
       i32.and
       i32.const 2
       i32.shl
       local.get $8
       i32.add
       local.tee $5
       i32.load
       i32.store offset=8
       local.get $5
       local.get $3
       i32.store
       local.get $3
       i32.const 12
       i32.add
       local.set $3
      end
      local.get $7
      i32.const 12
      i32.add
      local.set $7
      br $while-continue|00
     end
    end
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
    local.get $0
    local.get $1
    i32.store offset=8
    local.get $0
    local.get $10
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=20
    i32.store offset=16
   end
   local.get $0
   i32.load offset=8
   local.set $6
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $1
   i32.const 12
   i32.mul
   local.get $6
   i32.add
   local.tee $1
   local.get $4
   i32.store
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $1
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   local.get $9
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $1
   i32.store
  end
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
    local.tee $10
    i32.const 1
    i32.add
    local.tee $3
    i32.const 2
    i32.shl
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $8
    local.get $3
    i32.const 3
    i32.shl
    i32.const 3
    i32.div_s
    local.tee $6
    i32.const 12
    i32.mul
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $4
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
       local.get $3
       local.get $11
       i32.load
       local.tee $9
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
    local.get $10
    i32.store offset=4
    local.get $0
    local.get $4
    i32.store offset=8
    local.get $0
    local.get $6
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=20
    i32.store offset=16
   end
   local.get $0
   i32.load offset=8
   local.set $3
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
   local.get $3
   local.get $2
   i32.store offset=4
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
 )
 (func $src/BitMask/BitMask#contains (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.gt_u
  if
   i32.const 0
   return
  end
  local.get $1
  i32.load
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_u
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $4
    local.get $1
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    local.tee $5
    local.get $5
    local.get $4
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    i32.and
    i32.ne
    if
     i32.const 0
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
 )
 (func $src/BitMask/BitMask#intersects (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  i32.load offset=12
  f64.convert_i32_s
  local.get $1
  i32.load
  i32.load offset=12
  f64.convert_i32_s
  f64.min
  i32.trunc_f64_u
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_u
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $4
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    local.get $4
    local.get $1
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    i32.and
    if
     i32.const 1
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
 )
 (func $src/Query/QueryMaskGroup#match (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.load8_u
  local.set $5
  local.get $0
  i32.load offset=4
  local.tee $7
  i32.load offset=12
  local.set $8
  loop $for-loop|0
   local.get $6
   local.get $8
   i32.lt_s
   if
    local.get $5
    i32.const 16
    i32.eq
    i32.const 0
    block $src/Query/QueryMask#match|inlined.0 (result i32)
     local.get $7
     i32.load offset=4
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $0
     i32.load8_u
     i32.const 1
     i32.eq
     if
      block $__inlined_func$src/BitMask/BitMask#contains (result i32)
       i32.const 0
       local.set $2
       i32.const 0
       local.get $0
       i32.load offset=4
       local.tee $0
       i32.load offset=8
       local.get $1
       i32.load offset=8
       i32.gt_u
       br_if $__inlined_func$src/BitMask/BitMask#contains
       drop
       local.get $0
       i32.load
       i32.load offset=12
       local.set $3
       loop $for-loop|00
        local.get $2
        local.get $3
        i32.lt_u
        if
         i32.const 0
         local.get $2
         i32.const 2
         i32.shl
         local.tee $4
         local.get $0
         i32.load
         i32.load offset=4
         i32.add
         i32.load
         local.tee $9
         local.get $4
         local.get $1
         i32.load
         i32.load offset=4
         i32.add
         i32.load
         i32.and
         local.get $9
         i32.ne
         br_if $__inlined_func$src/BitMask/BitMask#contains
         drop
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|00
        end
       end
       i32.const 1
      end
      br $src/Query/QueryMask#match|inlined.0
     end
     local.get $0
     i32.load8_u
     i32.const 2
     i32.eq
     if
      block $__inlined_func$src/BitMask/BitMask#intersects (result i32)
       i32.const 0
       local.set $2
       local.get $1
       i32.load
       i32.load offset=12
       f64.convert_i32_s
       local.get $0
       i32.load offset=4
       local.tee $0
       i32.load
       i32.load offset=12
       f64.convert_i32_s
       f64.min
       i32.trunc_f64_u
       local.set $3
       loop $for-loop|01
        local.get $2
        local.get $3
        i32.lt_u
        if
         i32.const 1
         local.get $2
         i32.const 2
         i32.shl
         local.tee $4
         local.get $1
         i32.load
         i32.load offset=4
         i32.add
         i32.load
         local.get $4
         local.get $0
         i32.load
         i32.load offset=4
         i32.add
         i32.load
         i32.and
         br_if $__inlined_func$src/BitMask/BitMask#intersects
         drop
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|01
        end
       end
       i32.const 0
      end
      br $src/Query/QueryMask#match|inlined.0
     end
     local.get $0
     i32.load8_u
     i32.const 4
     i32.eq
     if
      block $__inlined_func$src/BitMask/BitMask#intersects2 (result i32)
       i32.const 0
       local.set $2
       local.get $1
       i32.load
       i32.load offset=12
       f64.convert_i32_s
       local.get $0
       i32.load offset=4
       local.tee $0
       i32.load
       i32.load offset=12
       f64.convert_i32_s
       f64.min
       i32.trunc_f64_u
       local.set $3
       loop $for-loop|03
        local.get $2
        local.get $3
        i32.lt_u
        if
         i32.const 1
         local.get $2
         i32.const 2
         i32.shl
         local.tee $4
         local.get $1
         i32.load
         i32.load offset=4
         i32.add
         i32.load
         local.get $4
         local.get $0
         i32.load
         i32.load offset=4
         i32.add
         i32.load
         i32.and
         br_if $__inlined_func$src/BitMask/BitMask#intersects2
         drop
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|03
        end
       end
       i32.const 0
      end
      i32.eqz
      br $src/Query/QueryMask#match|inlined.0
     end
     i32.const 0
    end
    local.tee $0
    select
    if
     i32.const 1
     return
    end
    i32.const 0
    local.get $5
    i32.const 8
    i32.eq
    local.get $0
    select
    if
     i32.const 0
     return
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $5
  i32.const 8
  i32.eq
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
  local.get $3
  i32.store offset=12
 )
 (func $src/Query/Query#tryAdd (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $src/Query/QueryMaskGroup#match
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#push
  i32.const 1
 )
 (func $src/Archetype/Archetype#transform (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $0
  i32.load
  local.tee $1
  i32.load
  local.get $1
  i32.load offset=4
  local.get $4
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $1
  local.get $1
  i32.const 15
  i32.shr_u
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $1
  local.get $1
  i32.const 13
  i32.shr_u
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $1
  local.get $1
  i32.const 16
  i32.shr_u
  i32.xor
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $1
  block $__inlined_func$~lib/map/Map<u32,src/Archetype/Archetype>#find
   loop $while-continue|0
    local.get $1
    if
     local.get $1
     i32.load offset=8
     local.tee $6
     i32.const 1
     i32.and
     if (result i32)
      i32.const 0
     else
      local.get $4
      local.get $1
      i32.load
      i32.eq
     end
     br_if $__inlined_func$~lib/map/Map<u32,src/Archetype/Archetype>#find
     local.get $6
     i32.const -2
     i32.and
     local.set $1
     br $while-continue|0
    end
   end
   i32.const 0
   local.set $1
  end
  block $folding-inner0
   local.get $1
   if
    local.get $0
    i32.load
    local.tee $0
    i32.load
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const -1028477379
    i32.mul
    i32.const 374761397
    i32.add
    i32.const 17
    i32.rotl
    i32.const 668265263
    i32.mul
    local.tee $0
    local.get $0
    i32.const 15
    i32.shr_u
    i32.xor
    i32.const -2048144777
    i32.mul
    local.tee $0
    local.get $0
    i32.const 13
    i32.shr_u
    i32.xor
    i32.const -1028477379
    i32.mul
    local.tee $0
    local.get $0
    i32.const 16
    i32.shr_u
    i32.xor
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $0
    block $__inlined_func$~lib/map/Map<u32,src/Archetype/Archetype>#find0
     loop $while-continue|01
      local.get $0
      if
       local.get $0
       i32.load offset=8
       local.tee $2
       i32.const 1
       i32.and
       if (result i32)
        i32.const 0
       else
        local.get $4
        local.get $0
        i32.load
        i32.eq
       end
       br_if $__inlined_func$~lib/map/Map<u32,src/Archetype/Archetype>#find0
       local.get $2
       i32.const -2
       i32.and
       local.set $0
       br $while-continue|01
      end
     end
     i32.const 0
     local.set $0
    end
    local.get $0
    i32.eqz
    br_if $folding-inner0
    local.get $0
    i32.load offset=4
    return
   end
   local.get $0
   i32.load offset=8
   call $src/BitMask/BitMask#copy
   local.get $4
   call $src/BitMask/BitMask#xor
   local.tee $6
   local.set $5
   block $__inlined_func$src/BitMask/BitMask#toString
    local.get $6
    i32.load
    i32.load offset=12
    i32.eqz
    if
     i32.const 1056
     local.set $1
     br $__inlined_func$src/BitMask/BitMask#toString
    end
    i32.const 3088
    local.set $1
    local.get $5
    i32.load
    local.tee $8
    i32.load offset=12
    i32.const 1
    i32.sub
    local.set $5
    loop $for-loop|0
     local.get $5
     i32.const 0
     i32.ge_s
     if
      local.get $1
      local.get $8
      i32.load offset=4
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $5
      local.get $8
      i32.const 3120
      i32.load
      call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
      local.set $1
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $for-loop|0
     end
    end
   end
   local.get $2
   local.get $1
   local.get $1
   call $~lib/util/hash/HASH<~lib/string/String>
   call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find
   if
    local.get $2
    local.get $1
    local.get $1
    call $~lib/util/hash/HASH<~lib/string/String>
    call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#find
    local.tee $1
    i32.eqz
    br_if $folding-inner0
    local.get $1
    i32.load offset=4
    local.set $1
   else
    i32.const 0
    local.get $6
    call $src/Archetype/Archetype#constructor
    local.tee $1
    i32.load
    local.get $4
    local.get $0
    call $~lib/map/Map<u32,src/Archetype/Archetype>#set
    local.get $2
    local.get $1
    i32.load offset=12
    local.get $1
    call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set
    loop $for-loop|02
     local.get $3
     i32.load offset=12
     local.get $7
     i32.gt_s
     if
      local.get $3
      i32.load offset=4
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $1
      call $src/Query/Query#tryAdd
      drop
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|02
     end
    end
   end
   local.get $0
   i32.load
   local.get $4
   local.get $1
   call $~lib/map/Map<u32,src/Archetype/Archetype>#set
   local.get $1
   return
  end
  i32.const 3712
  i32.const 3776
  i32.const 105
  i32.const 17
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/BitMask/BitMask#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 5
  i32.shr_u
  local.tee $2
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
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
 )
 (func $src/BitMask/BitMask#or (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#__grow
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.const 5
  i32.shr_u
  i32.const 2
  i32.shl
  i32.add
  local.tee $2
  local.get $2
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.or
  i32.store
  local.get $0
 )
 (func $src/BitMask/BitMask#and (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/BitMask/BitMask#__grow
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.const 5
  i32.shr_u
  i32.const 2
  i32.shl
  i32.add
  local.tee $2
  local.get $2
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.and
  i32.store
  local.get $0
 )
 (func $src/BitMask/BitMask#not (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.get $0
  i32.load offset=4
  call $src/BitMask/BitMask#constructor
  local.set $2
  local.get $0
  i32.load
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    local.tee $4
    local.get $2
    i32.load
    i32.load offset=4
    i32.add
    local.get $4
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    i32.const -1
    i32.xor
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $src/BitMask/BitMask#union (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load
  i32.load offset=12
  local.set $6
  local.get $1
  i32.load
  i32.load offset=12
  local.set $3
  i32.const 0
  local.get $0
  i32.load offset=4
  f64.convert_i32_u
  local.get $1
  i32.load offset=4
  f64.convert_i32_u
  f64.max
  i32.trunc_f64_u
  call $src/BitMask/BitMask#constructor
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_u
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $5
    local.get $4
    i32.load
    i32.load offset=4
    i32.add
    local.get $2
    local.get $6
    i32.lt_u
    if (result i32)
     local.get $5
     local.get $0
     i32.load
     i32.load offset=4
     i32.add
     i32.load
    else
     i32.const 0
    end
    local.set $8
    local.get $2
    local.get $3
    i32.lt_u
    if (result i32)
     local.get $5
     local.get $1
     i32.load
     i32.load offset=4
     i32.add
     i32.load
    else
     i32.const 0
    end
    local.get $8
    i32.or
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $src/BitMask/BitMask#intersection (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  local.get $0
  i32.load offset=4
  f64.convert_i32_u
  local.get $1
  i32.load offset=4
  f64.convert_i32_u
  f64.min
  i32.trunc_f64_u
  call $src/BitMask/BitMask#constructor
  local.tee $3
  i32.load
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_u
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $4
    local.get $3
    i32.load
    i32.load offset=4
    i32.add
    local.get $4
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    local.get $4
    local.get $1
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    i32.and
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $src/BitMask/BitMask#difference (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.load
  i32.load offset=12
  local.set $5
  i32.const 0
  local.get $0
  i32.load offset=4
  call $src/BitMask/BitMask#constructor
  local.tee $3
  i32.load
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_u
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $4
    local.get $3
    i32.load
    i32.load offset=4
    i32.add
    local.get $4
    local.get $0
    i32.load
    i32.load offset=4
    i32.add
    i32.load
    local.get $2
    local.get $5
    i32.lt_u
    if (result i32)
     local.get $4
     local.get $1
     i32.load
     i32.load offset=4
     i32.add
     i32.load
    else
     i32.const 0
    end
    i32.const -1
    i32.xor
    i32.and
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $src/BitMask/BitMask#symmetrictDifference (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.load
  i32.load offset=12
  local.set $5
  local.get $1
  i32.load
  i32.load offset=12
  local.set $6
  i32.const 0
  local.get $0
  i32.load offset=4
  f64.convert_i32_u
  local.get $1
  i32.load offset=4
  f64.convert_i32_u
  f64.max
  i32.trunc_f64_u
  call $src/BitMask/BitMask#constructor
  local.tee $3
  i32.load
  i32.load offset=12
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.lt_u
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $4
    local.get $3
    i32.load
    i32.load offset=4
    i32.add
    local.get $2
    local.get $5
    i32.lt_u
    if (result i32)
     local.get $4
     local.get $0
     i32.load
     i32.load offset=4
     i32.add
     i32.load
    else
     i32.const 0
    end
    local.set $9
    local.get $2
    local.get $6
    i32.lt_u
    if (result i32)
     local.get $4
     local.get $1
     i32.load
     i32.load offset=4
     i32.add
     i32.load
    else
     i32.const 0
    end
    local.get $9
    i32.xor
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $src/index/World#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 29
   i32.const 18
   call $~lib/rt/tcms/__new
   local.set $0
  end
  i32.const 24
  i32.const 11
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $1
  i32.store
  i32.const 16
  i32.const 19
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.const 32
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 256
  call $src/SparseSet/SparseSet#constructor
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  i32.const 16
  i32.const 17
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.const 32
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 1
  call $src/BitMask/BitMask#constructor
  call $src/Archetype/Archetype#constructor
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store8 offset=28
  local.get $0
 )
 (func $src/index/World#getNextComponentId (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load offset=16
  local.tee $0
  i32.const 1
  i32.add
  i32.store offset=16
  local.get $0
 )
 (func $~lib/array/Array<src/Archetype/Archetype>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 13
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  i32.store
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
   i32.const 3152
   i32.const 3264
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $3
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $src/index/World#registerQuery (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=20
  local.get $1
  call $~lib/array/Array<src/Archetype/Archetype>#push
  local.get $0
  i32.load8_u offset=28
  if
   local.get $0
   i32.load
   local.set $2
   i32.const 0
   local.set $0
   local.get $2
   i32.load offset=8
   local.set $5
   local.get $2
   i32.load offset=16
   local.tee $6
   call $~lib/array/Array<src/Archetype/Archetype>#constructor
   local.set $2
   loop $for-loop|0
    local.get $3
    local.get $6
    i32.lt_s
    if
     local.get $3
     i32.const 12
     i32.mul
     local.get $5
     i32.add
     local.tee $7
     i32.load offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      local.get $2
      local.get $0
      local.get $7
      i32.load offset=4
      call $~lib/array/Array<i32>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $2
   local.get $0
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $2
   local.get $0
   i32.store offset=12
   local.get $2
   i32.load offset=12
   local.set $0
   loop $for-loop|00
    local.get $0
    local.get $4
    i32.gt_s
    if
     local.get $1
     local.get $2
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     call $src/Query/Query#tryAdd
     drop
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|00
    end
   end
  end
 )
 (func $src/index/World#init (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load8_u offset=28
  if
   i32.const 3824
   i32.const 3952
   i32.const 47
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.store8 offset=28
  i32.const 0
  i32.const 0
  local.get $0
  i32.load offset=16
  call $src/BitMask/BitMask#constructor
  call $src/Archetype/Archetype#constructor
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load offset=12
  local.get $1
  call $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>#set
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  i32.load offset=20
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    i32.load offset=20
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    call $src/Query/Query#tryAdd
    drop
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $src/index/World#hasEntity (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $3
   local.get $2
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/array/Array<u32>#__get
  end
  i32.eqz
  i32.eqz
 )
 (func $src/index/World#createEntity (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load8_u offset=28
  i32.eqz
  if
   i32.const 4000
   i32.const 3952
   i32.const 69
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  block $src/SparseSet/SparseSet#has|inlined.4 (result i32)
   local.get $0
   i32.load offset=8
   i32.load
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $0
    i32.load offset=8
    i32.load
    call $~lib/array/Array<u32>#pop
    local.set $1
   else
    local.get $0
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.const 1
    i32.add
    i32.store offset=12
   end
   i32.const 0
   local.get $0
   i32.load offset=24
   local.tee $3
   i32.load offset=4
   local.tee $2
   i32.load offset=4
   i32.load offset=12
   local.get $1
   i32.le_u
   br_if $src/SparseSet/SparseSet#has|inlined.4
   drop
   local.get $2
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $4
   local.get $2
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  i32.eqz
  if
   local.get $2
   i32.load offset=4
   local.get $1
   local.get $2
   i32.load
   local.get $1
   call $~lib/array/Array<u32>#push
   i32.const 1
   i32.sub
   call $~lib/array/Array<i32>#__set
  end
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $3
  call $~lib/array/Array<i32>#__set
  local.get $1
 )
 (func $src/index/World#deleteEntity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $3
   local.get $2
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  if
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<u32>#__get
  local.tee $3
  i32.eqz
  if
   i32.const 4180
   local.get $1
   i32.const 10
   call $~lib/util/number/utoa32
   i32.store
   i32.const 4176
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3952
   i32.const 85
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  local.get $3
  i32.load offset=4
  local.tee $1
  i32.load offset=4
  i32.load offset=12
  i32.ge_u
  if (result i32)
   i32.const 0
  else
   local.get $1
   i32.load offset=4
   i32.load offset=4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $3
   local.get $1
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $1
    i32.load
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    i32.eq
   else
    i32.const 0
   end
  end
  if
   local.get $2
   local.get $1
   i32.load
   call $~lib/array/Array<u32>#pop
   local.tee $4
   i32.ne
   if
    local.get $1
    i32.load
    i32.load offset=4
    local.get $1
    i32.load offset=4
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $1
    i32.load offset=4
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store
   end
  end
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.load offset=4
  i32.load offset=12
  local.get $2
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $3
   i32.load offset=4
   i32.load offset=4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   local.get $3
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $3
    i32.load
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    i32.eq
   else
    i32.const 0
   end
  end
  i32.eqz
  if
   local.get $3
   i32.load offset=4
   local.get $2
   local.get $3
   i32.load
   local.get $2
   call $~lib/array/Array<u32>#push
   i32.const 1
   i32.sub
   call $~lib/array/Array<i32>#__set
  end
 )
 (func $src/index/World#hasComponent (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<u32>#__get
  local.tee $0
  if (result i32)
   local.get $2
   i32.const 5
   i32.shr_u
   local.tee $1
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.load offset=8
   i32.ge_u
   if (result i32)
    i32.const 0
   else
    local.get $0
    i32.load
    i32.load offset=4
    local.get $1
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
 )
 (func $src/index/World#setComponent (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  local.tee $4
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.load offset=4
  i32.load offset=12
  i32.ge_u
  if (result i32)
   i32.const 0
  else
   local.get $3
   i32.load offset=4
   i32.load offset=4
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $5
   local.get $3
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $3
    i32.load
    i32.load offset=4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    i32.eq
   else
    i32.const 0
   end
  end
  if
   i32.const 4260
   local.get $1
   i32.const 10
   call $~lib/util/number/utoa32
   i32.store
   i32.const 4256
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3952
   i32.const 99
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<u32>#__get
  local.tee $4
  i32.eqz
  if
   i32.const 4292
   local.get $1
   i32.const 10
   call $~lib/util/number/utoa32
   i32.store
   i32.const 4288
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3952
   i32.const 102
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.tee $3
  i32.const 5
  i32.shr_u
  local.tee $7
  local.get $4
  i32.load offset=8
  local.tee $5
  i32.load offset=8
  i32.ge_u
  if (result i32)
   i32.const 0
  else
   local.get $5
   i32.load
   i32.load offset=4
   local.get $7
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $3
   i32.shr_u
   i32.const 1
   i32.and
  end
  if (result i32)
   local.get $3
   i32.const 5
   i32.shr_u
   local.tee $7
   local.get $4
   i32.load offset=8
   local.tee $5
   i32.load offset=8
   i32.ge_u
   if (result i32)
    i32.const 0
   else
    local.get $5
    i32.load
    i32.load offset=4
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $3
    i32.shr_u
    i32.const 1
    i32.and
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   local.get $4
   i32.load offset=4
   local.tee $5
   local.set $7
   local.get $1
   local.tee $3
   local.set $6
   local.get $5
   i32.load offset=4
   i32.load offset=12
   local.get $3
   i32.le_u
   if (result i32)
    i32.const 0
   else
    local.get $7
    i32.load offset=4
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    local.get $7
    i32.load
    i32.load offset=12
    i32.lt_s
    if (result i32)
     local.get $7
     i32.load
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $3
     i32.eq
    else
     i32.const 0
    end
   end
   if
    local.get $5
    i32.load
    call $~lib/array/Array<u32>#pop
    local.tee $7
    local.get $6
    i32.ne
    if
     local.get $5
     i32.load
     i32.load offset=4
     local.get $5
     i32.load offset=4
     i32.load offset=4
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $6
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
     local.get $5
     i32.load offset=4
     i32.load offset=4
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store
    end
   end
   local.get $4
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=20
   call $src/Archetype/Archetype#transform
   local.tee $6
   i32.load offset=4
   local.tee $4
   local.set $2
   local.get $3
   local.tee $5
   local.get $4
   i32.load offset=4
   i32.load offset=12
   i32.ge_u
   if (result i32)
    i32.const 0
   else
    local.get $2
    i32.load offset=4
    i32.load offset=4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    local.get $2
    i32.load
    i32.load offset=12
    i32.lt_s
    if (result i32)
     local.get $2
     i32.load
     i32.load offset=4
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $5
     i32.eq
    else
     i32.const 0
    end
   end
   i32.eqz
   if
    local.get $2
    i32.load offset=4
    local.get $5
    local.get $2
    i32.load
    local.get $5
    call $~lib/array/Array<u32>#push
    i32.const 1
    i32.sub
    call $~lib/array/Array<i32>#__set
   end
   local.get $0
   i32.load offset=4
   local.get $5
   local.get $6
   call $~lib/array/Array<i32>#__set
  end
 )
 (func $src/index/World#removeComponent (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $5
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $3
   i32.load offset=4
   i32.load offset=4
   local.get $5
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $4
   local.get $3
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $3
    i32.load
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $5
    i32.eq
   else
    i32.const 0
   end
  end
  if
   i32.const 4324
   local.get $1
   i32.const 10
   call $~lib/util/number/utoa32
   i32.store
   i32.const 4320
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3952
   i32.const 111
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<u32>#__get
  local.tee $5
  i32.eqz
  if
   i32.const 4356
   local.get $1
   i32.const 10
   call $~lib/util/number/utoa32
   i32.store
   i32.const 4352
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3952
   i32.const 114
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 5
  i32.shr_u
  local.tee $4
  local.get $5
  i32.load offset=8
  local.tee $3
  i32.load offset=8
  i32.ge_u
  if (result i32)
   i32.const 0
  else
   local.get $3
   i32.load
   i32.load offset=4
   local.get $4
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
   local.get $5
   i32.load offset=4
   local.tee $4
   local.set $7
   local.get $1
   local.tee $3
   local.set $6
   local.get $4
   i32.load offset=4
   i32.load offset=12
   local.get $1
   i32.le_u
   if (result i32)
    i32.const 0
   else
    local.get $7
    i32.load offset=4
    i32.load offset=4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    i32.load
    i32.load offset=12
    i32.lt_s
    if (result i32)
     local.get $7
     i32.load
     i32.load offset=4
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
   end
   if
    local.get $4
    i32.load
    call $~lib/array/Array<u32>#pop
    local.tee $7
    local.get $6
    i32.ne
    if
     local.get $4
     i32.load
     i32.load offset=4
     local.get $4
     i32.load offset=4
     i32.load offset=4
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $6
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
     local.get $4
     i32.load offset=4
     i32.load offset=4
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store
    end
   end
   local.get $1
   local.tee $4
   local.get $5
   local.get $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=20
   call $src/Archetype/Archetype#transform
   local.tee $6
   i32.load offset=4
   local.tee $2
   i32.load offset=4
   i32.load offset=12
   i32.ge_u
   if (result i32)
    i32.const 0
   else
    local.get $2
    i32.load offset=4
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    local.get $2
    i32.load
    i32.load offset=12
    i32.lt_s
    if (result i32)
     local.get $2
     i32.load
     i32.load offset=4
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $4
     i32.eq
    else
     i32.const 0
    end
   end
   i32.eqz
   if
    local.get $2
    i32.load offset=4
    local.get $4
    local.get $2
    i32.load
    local.get $4
    call $~lib/array/Array<u32>#push
    i32.const 1
    i32.sub
    call $~lib/array/Array<i32>#__set
   end
   local.get $0
   i32.load offset=4
   local.get $3
   local.get $6
   call $~lib/array/Array<i32>#__set
  end
 )
 (func $src/Query/QueryMask#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 15
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $src/Query/QueryMask#get:type (param $0 i32) (result i32)
  local.get $0
  i32.load8_u
 )
 (func $src/Query/QueryMask#match (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load8_u
  i32.const 1
  i32.eq
  if
   block $__inlined_func$src/BitMask/BitMask#contains (result i32)
    i32.const 0
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.load offset=8
    local.get $1
    i32.load offset=8
    i32.gt_u
    br_if $__inlined_func$src/BitMask/BitMask#contains
    drop
    local.get $0
    i32.load
    i32.load offset=12
    local.set $3
    loop $for-loop|0
     local.get $2
     local.get $3
     i32.lt_u
     if
      i32.const 0
      local.get $2
      i32.const 2
      i32.shl
      local.tee $4
      local.get $0
      i32.load
      i32.load offset=4
      i32.add
      i32.load
      local.tee $5
      local.get $4
      local.get $1
      i32.load
      i32.load offset=4
      i32.add
      i32.load
      i32.and
      local.get $5
      i32.ne
      br_if $__inlined_func$src/BitMask/BitMask#contains
      drop
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    i32.const 1
   end
   return
  end
  local.get $0
  i32.load8_u
  i32.const 2
  i32.eq
  if
   block $__inlined_func$src/BitMask/BitMask#intersects (result i32)
    local.get $1
    i32.load
    i32.load offset=12
    f64.convert_i32_s
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.load
    i32.load offset=12
    f64.convert_i32_s
    f64.min
    i32.trunc_f64_u
    local.set $3
    loop $for-loop|00
     local.get $2
     local.get $3
     i32.lt_u
     if
      i32.const 1
      local.get $2
      i32.const 2
      i32.shl
      local.tee $4
      local.get $1
      i32.load
      i32.load offset=4
      i32.add
      i32.load
      local.get $4
      local.get $0
      i32.load
      i32.load offset=4
      i32.add
      i32.load
      i32.and
      br_if $__inlined_func$src/BitMask/BitMask#intersects
      drop
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|00
     end
    end
    i32.const 0
   end
   return
  end
  local.get $0
  i32.load8_u
  i32.const 4
  i32.eq
  if
   block $__inlined_func$src/BitMask/BitMask#intersects1 (result i32)
    local.get $1
    i32.load
    i32.load offset=12
    f64.convert_i32_s
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.load
    i32.load offset=12
    f64.convert_i32_s
    f64.min
    i32.trunc_f64_u
    local.set $3
    loop $for-loop|02
     local.get $2
     local.get $3
     i32.lt_u
     if
      i32.const 1
      local.get $2
      i32.const 2
      i32.shl
      local.tee $4
      local.get $1
      i32.load
      i32.load offset=4
      i32.add
      i32.load
      local.get $4
      local.get $0
      i32.load
      i32.load offset=4
      i32.add
      i32.load
      i32.and
      br_if $__inlined_func$src/BitMask/BitMask#intersects1
      drop
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|02
     end
    end
    i32.const 0
   end
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $src/Query/QueryMaskGroup#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 14
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/util/sort/insertionSort<u32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $4
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $4
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.ge_s
   if
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $3
    i32.load offset=4
    local.tee $5
    local.set $4
    local.get $3
    i32.load
    local.tee $3
    local.get $5
    i32.const 4384
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $3
     local.set $4
     local.get $5
     local.set $3
    end
    local.get $6
    i32.const 1
    i32.sub
    local.set $5
    loop $while-continue|1
     local.get $1
     local.get $5
     i32.le_s
     if
      local.get $5
      i32.const 2
      i32.shl
      local.get $0
      i32.add
      i32.load
      local.tee $7
      local.get $3
      i32.const 4384
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 0
      i32.gt_s
      if
       local.get $5
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $7
       i32.store offset=8
       local.get $5
       i32.const 1
       i32.sub
       local.set $5
       br $while-continue|1
      end
     end
    end
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $5
     i32.le_s
     if
      local.get $5
      i32.const 2
      i32.shl
      local.get $0
      i32.add
      i32.load
      local.tee $3
      local.get $4
      i32.const 4384
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 0
      i32.gt_s
      if
       local.get $5
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $3
       i32.store offset=4
       local.get $5
       i32.const 1
       i32.sub
       local.set $5
       br $while-continue|2
      end
     end
    end
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $4
    i32.store offset=4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<u32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.get $1
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  i32.const 4384
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.gt_s
    if (result i32)
     local.get $3
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $4
     i32.load offset=4
     local.get $4
     i32.load
     i32.const 4384
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
   local.get $3
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $4
     i32.load
     local.set $5
     local.get $4
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $4
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $4
     local.get $5
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $3
    i32.gt_s
    if (result i32)
     local.get $3
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $1
     i32.load offset=4
     local.get $1
     i32.load
     i32.const 4384
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|2
    end
   end
  end
  local.get $3
 )
 (func $~lib/util/sort/mergeRuns<u32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $5
  i32.add
  local.set $6
  local.get $5
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 2
    i32.shl
    local.tee $7
    i32.add
    local.get $0
    local.get $7
    i32.add
    i32.load
    i32.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $5
   i32.gt_s
   if
    local.get $6
    local.get $5
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $5
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.tee $6
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.tee $7
    i32.const 4384
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $6
     i32.store
     local.get $5
     i32.const 1
     i32.sub
     local.set $5
    else
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $7
     i32.store
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 5028
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
  local.tee $0
  local.get $0
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/util/sort/SORT<u32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  local.get $1
  i32.const 48
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    return
   end
   block $break|0
    block $case1|0
     local.get $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $0
     i32.load
     local.tee $1
     local.get $0
     i32.load offset=4
     local.tee $2
     i32.const 4384
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $3
     local.get $0
     local.get $2
     local.get $1
     local.get $3
     select
     i32.store
     local.get $1
     local.get $2
     local.get $3
     select
     local.tee $1
     local.get $0
     i32.load offset=8
     local.tee $2
     i32.const 4384
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $3
     local.get $0
     local.get $2
     local.get $1
     local.get $3
     select
     i32.store offset=4
     local.get $0
     local.get $1
     local.get $2
     local.get $3
     select
     i32.store offset=8
    end
    local.get $0
    i32.load
    local.tee $1
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 4384
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.gt_s
    local.set $3
    local.get $0
    local.get $2
    local.get $1
    local.get $3
    select
    i32.store
    local.get $0
    local.get $1
    local.get $2
    local.get $3
    select
    i32.store offset=4
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   call $~lib/util/sort/insertionSort<u32>
   return
  end
  i32.const 33
  local.get $1
  i32.clz
  i32.sub
  local.tee $5
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  i32.shl
  local.set $6
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $6
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $8
  local.get $4
  i32.add
  local.set $9
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_u
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $8
    i32.add
    i32.const -1
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $4
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $10
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $7
  call $~lib/util/sort/extendRunRight<u32>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $7
   i32.const 31
   local.get $7
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $4
   call $~lib/util/sort/insertionSort<u32>
  end
  loop $while-continue|2
   local.get $1
   local.get $7
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $5
    local.get $7
    call $~lib/util/sort/extendRunRight<u32>
    local.tee $4
    local.get $5
    i32.sub
    i32.const 1
    i32.add
    local.tee $6
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $5
     local.get $7
     local.get $5
     i32.const 31
     i32.add
     local.tee $4
     local.get $4
     local.get $7
     i32.gt_s
     select
     local.tee $4
     local.get $6
     call $~lib/util/sort/insertionSort<u32>
    end
    local.get $2
    local.get $5
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $7
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $11
    i64.div_u
    local.get $4
    local.get $5
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $11
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $6
    loop $for-loop|3
     local.get $3
     local.get $6
     i32.gt_u
     if
      local.get $3
      i32.const 2
      i32.shl
      local.get $8
      i32.add
      i32.load
      local.tee $12
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $12
       local.get $9
       local.get $3
       i32.const 2
       i32.shl
       local.tee $2
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $10
       call $~lib/util/sort/mergeRuns<u32>
       local.get $2
       local.get $8
       i32.add
       i32.const -1
       i32.store
       local.get $12
       local.set $2
      end
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $for-loop|3
     end
    end
    local.get $8
    local.get $6
    i32.const 2
    i32.shl
    local.tee $3
    i32.add
    local.get $2
    i32.store
    local.get $3
    local.get $9
    i32.add
    local.get $1
    i32.store
    local.get $5
    local.set $2
    local.get $4
    local.set $1
    local.get $6
    local.set $3
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $3
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $8
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $3
     i32.const 2
     i32.shl
     local.get $9
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $7
     local.get $10
     call $~lib/util/sort/mergeRuns<u32>
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|4
   end
  end
  local.get $10
  call $~lib/rt/tlsf/__free
  local.get $8
  call $~lib/rt/tlsf/__free
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $src/Query/makeMask (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/sort/SORT<u32>
  i32.const 0
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $src/BitMask/BitMask#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $1
    call $~lib/array/Array<u32>#__get
    call $src/BitMask/BitMask#or
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $src/Query/all (param $0 i32) (result i32)
  i32.const 0
  i32.const 1
  local.get $0
  call $src/Query/makeMask
  call $src/Query/QueryMask#constructor
 )
 (func $src/Query/any (param $0 i32) (result i32)
  i32.const 0
  i32.const 2
  local.get $0
  call $src/Query/makeMask
  call $src/Query/QueryMask#constructor
 )
 (func $src/Query/not (param $0 i32) (result i32)
  i32.const 0
  i32.const 4
  local.get $0
  call $src/Query/makeMask
  call $src/Query/QueryMask#constructor
 )
 (func $src/Query/and (param $0 i32) (result i32)
  i32.const 0
  i32.const 8
  local.get $0
  call $src/Query/QueryMaskGroup#constructor
 )
 (func $src/Query/or (param $0 i32) (result i32)
  i32.const 0
  i32.const 16
  local.get $0
  call $src/Query/QueryMaskGroup#constructor
 )
 (func $src/Query/Query#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 12
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/Archetype/Archetype>#constructor
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $src/Query/Query#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.load offset=12
 )
 (func $src/Query/Query#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.tee $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 3600
   i32.const 3264
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
  local.tee $0
  i32.eqz
  if
   i32.const 4416
   i32.const 3264
   i32.const 111
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load
 )
 (func $src/Query/Query#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.load offset=4
  i32.load
 )
 (func $src/SparseSet/SparseSet#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  local.get $0
  i32.load
  i32.load offset=12
  i32.lt_s
  if (result i32)
   local.get $0
   i32.load
   i32.load offset=4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.get $1
   i32.eq
  else
   i32.const 0
  end
 )
 (func $src/SparseSet/SparseSet#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  i32.load offset=12
  local.get $1
  i32.le_s
  if
   i32.const 4548
   local.get $1
   call $~lib/number/I32#toString
   i32.store
   i32.const 4544
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 3536
   i32.const 33
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<u32>#__get
 )
 (func $src/SparseSet/SparseSet#uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $src/SparseSet/SparseSet#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $2
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $0
    i32.load
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   local.get $1
   local.get $0
   i32.load
   local.get $1
   call $~lib/array/Array<u32>#push
   i32.const 1
   i32.sub
   call $~lib/array/Array<i32>#__set
  end
  local.get $0
 )
 (func $src/SparseSet/SparseSet#pop (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/array/Array<u32>#pop
 )
 (func $src/SparseSet/SparseSet#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=12
  local.get $1
  i32.le_u
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load offset=4
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $2
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $0
    i32.load
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
   else
    i32.const 0
   end
  end
  if
   local.get $1
   local.get $0
   i32.load
   call $~lib/array/Array<u32>#pop
   local.tee $2
   i32.ne
   if
    local.get $0
    i32.load
    i32.load offset=4
    local.get $0
    i32.load offset=4
    i32.load offset=4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    local.get $2
    i32.store
    local.get $0
    i32.load offset=4
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    i32.store
   end
  end
  local.get $0
 )
 (func $src/ComponentSet/FlagComponentSet#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 21
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $1
  i32.load offset=16
  local.tee $2
  i32.const 1
  i32.add
  i32.store offset=16
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $src/ComponentSet/FlagComponentSet#add (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  call $src/index/World#setComponent
 )
 (func $src/ComponentSet/FlagComponentSet#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.tee $2
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.load offset=8
  local.tee $1
  i32.load offset=4
  i32.load offset=12
  i32.ge_u
  if (result i32)
   i32.const 0
  else
   local.get $1
   i32.load offset=4
   i32.load offset=4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $4
   local.get $1
   i32.load
   i32.load offset=12
   i32.lt_s
   if (result i32)
    local.get $1
    i32.load
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    i32.eq
   else
    i32.const 0
   end
  end
  if (result i32)
   i32.const 0
  else
   local.get $3
   i32.load offset=4
   local.get $2
   call $~lib/array/Array<u32>#__get
  end
  if (result i32)
   local.get $0
   i32.load
   local.set $0
   local.get $3
   i32.load offset=4
   local.get $2
   call $~lib/array/Array<u32>#__get
   local.tee $1
   if (result i32)
    local.get $0
    i32.const 5
    i32.shr_u
    local.tee $2
    local.get $1
    i32.load offset=8
    local.tee $1
    i32.load offset=8
    i32.ge_u
    if (result i32)
     i32.const 0
    else
     local.get $1
     i32.load
     i32.load offset=4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $0
     i32.shr_u
     i32.const 1
     i32.and
    end
   else
    i32.const 0
   end
  else
   i32.const 0
  end
 )
 (func $src/ComponentSet/FlagComponentSet#remove (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  call $src/index/World#removeComponent
 )
 (func $~lib/rt/tcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.get $0
   i32.const 5028
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1376
    i32.const 101
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 105
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 4576
    i32.const 1376
    i32.const 181
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/tcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 4672
   i32.const 1376
   i32.const 195
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tcms/Object#unlink
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/tcms/white
  local.get $2
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
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3600
  call $~lib/rt/tcms/__visit
  i32.const 3152
  call $~lib/rt/tcms/__visit
  i32.const 3664
  call $~lib/rt/tcms/__visit
  i32.const 4416
  call $~lib/rt/tcms/__visit
  i32.const 3712
  call $~lib/rt/tcms/__visit
  i32.const 1312
  call $~lib/rt/tcms/__visit
  i32.const 4576
  call $~lib/rt/tcms/__visit
  i32.const 4672
  call $~lib/rt/tcms/__visit
  i32.const 1936
  call $~lib/rt/tcms/__visit
  i32.const 2992
  call $~lib/rt/tcms/__visit
  global.get $~lib/rt/tcms/pinSpace
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
     i32.const 1376
     i32.const 213
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
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $3
  global.get $~lib/rt/tcms/toSpace
  local.tee $4
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|1
   local.get $0
   local.get $4
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $3
    i32.ne
    if
     i32.const 0
     i32.const 1376
     i32.const 223
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
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|2
   local.get $0
   local.get $2
   i32.ne
   if
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1376
     i32.const 232
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $0
    i32.const 5028
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/tcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/tcms/total
     local.get $0
     i32.const 4
     i32.add
     call $~lib/rt/tlsf/__free
    end
    local.set $0
    br $while-continue|2
   end
  end
  local.get $2
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $2
  i32.store offset=8
  local.get $4
  global.set $~lib/rt/tcms/fromSpace
  local.get $2
  global.set $~lib/rt/tcms/toSpace
  local.get $3
  global.set $~lib/rt/tcms/white
 )
 (func $~lib/rt/tcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/tcms/white
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
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/toSpace
   local.tee $2
   i32.load offset=8
   local.set $1
   local.get $0
   global.get $~lib/rt/tcms/white
   i32.eqz
   local.get $2
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
  end
 )
 (func $src/SparseSet/SparseSet~visit (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  if
   local.get $1
   call $~lib/rt/tcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  if
   local.get $0
   call $~lib/rt/tcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner4
   block $folding-inner3
    block $folding-inner2
     block $folding-inner1
      block $folding-inner0
       block $invalid
        block $~lib/function/Function<%28u32%2Cu32%29=>i32>
         block $src/index/World
          block $src/Query/Query
           block $~lib/map/Map<~lib/string/String,src/Archetype/Archetype>
            block $~lib/staticarray/StaticArray<~lib/string/String>
             block $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/array/Array<u32>%29=>~lib/string/String>
              block $src/SparseSet/SparseSet
               block $~lib/map/Map<u32,src/Archetype/Archetype>
                block $src/Archetype/Archetype
                 block $~lib/string/String
                  block $~lib/arraybuffer/ArrayBuffer
                   local.get $0
                   i32.const 8
                   i32.sub
                   i32.load
                   br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner4 $folding-inner0 $src/Archetype/Archetype $~lib/map/Map<u32,src/Archetype/Archetype> $src/SparseSet/SparseSet $folding-inner0 $folding-inner4 $~lib/function/Function<%28~lib/string/String%2Cu32%2Ci32%2C~lib/array/Array<u32>%29=>~lib/string/String> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/map/Map<~lib/string/String,src/Archetype/Archetype> $src/Query/Query $folding-inner1 $folding-inner2 $folding-inner2 $folding-inner1 $folding-inner1 $src/index/World $folding-inner1 $~lib/function/Function<%28u32%2Cu32%29=>i32> $folding-inner2 $folding-inner3 $folding-inner0 $folding-inner3 $folding-inner0 $folding-inner3 $folding-inner3 $folding-inner0 $folding-inner3 $folding-inner0 $folding-inner3 $folding-inner3 $folding-inner0 $invalid
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
                 call $~lib/rt/tcms/__visit
                end
                local.get $1
                i32.load offset=4
                local.tee $0
                if
                 local.get $0
                 call $~lib/rt/tcms/__visit
                end
                local.get $1
                i32.load offset=8
                local.tee $0
                if
                 local.get $0
                 call $~lib/rt/tcms/__visit
                end
                local.get $1
                i32.load offset=12
                local.tee $1
                if
                 local.get $1
                 call $~lib/rt/tcms/__visit
                end
                return
               end
               local.get $0
               i32.load
               call $~lib/rt/tcms/__visit
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
               loop $while-continue|0
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
                  i32.load offset=4
                  call $~lib/rt/tcms/__visit
                 end
                 local.get $0
                 i32.const 12
                 i32.add
                 local.set $0
                 br $while-continue|0
                end
               end
               local.get $1
               call $~lib/rt/tcms/__visit
               return
              end
              local.get $0
              call $src/SparseSet/SparseSet~visit
              return
             end
             local.get $0
             i32.load offset=4
             call $~lib/rt/tcms/__visit
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
            loop $while-continue|00
             local.get $1
             local.get $2
             i32.lt_u
             if
              local.get $1
              i32.load
              local.tee $0
              if
               local.get $0
               call $~lib/rt/tcms/__visit
              end
              local.get $1
              i32.const 4
              i32.add
              local.set $1
              br $while-continue|00
             end
            end
            return
           end
           local.get $0
           i32.load
           call $~lib/rt/tcms/__visit
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
              call $~lib/rt/tcms/__visit
              local.get $0
              i32.load offset=4
              call $~lib/rt/tcms/__visit
             end
             local.get $0
             i32.const 12
             i32.add
             local.set $0
             br $while-continue|01
            end
           end
           local.get $1
           call $~lib/rt/tcms/__visit
           return
          end
          local.get $0
          call $src/SparseSet/SparseSet~visit
          return
         end
         local.get $0
         local.tee $1
         i32.load
         local.tee $0
         if
          local.get $0
          call $~lib/rt/tcms/__visit
         end
         local.get $1
         i32.load offset=4
         local.tee $0
         if
          local.get $0
          call $~lib/rt/tcms/__visit
         end
         local.get $1
         i32.load offset=8
         local.tee $0
         if
          local.get $0
          call $~lib/rt/tcms/__visit
         end
         local.get $1
         i32.load offset=20
         local.tee $0
         if
          local.get $0
          call $~lib/rt/tcms/__visit
         end
         local.get $1
         i32.load offset=24
         local.tee $1
         if
          local.get $1
          call $~lib/rt/tcms/__visit
         end
         return
        end
        local.get $0
        i32.load offset=4
        call $~lib/rt/tcms/__visit
        return
       end
       unreachable
      end
      local.get $0
      i32.load
      call $~lib/rt/tcms/__visit
      return
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
     loop $while-continue|04
      local.get $2
      local.get $3
      i32.lt_u
      if
       local.get $2
       i32.load
       local.tee $0
       if
        local.get $0
        call $~lib/rt/tcms/__visit
       end
       local.get $2
       i32.const 4
       i32.add
       local.set $2
       br $while-continue|04
      end
     end
     local.get $1
     i32.load
     call $~lib/rt/tcms/__visit
     return
    end
    local.get $0
    i32.load offset=4
    local.tee $0
    if
     local.get $0
     call $~lib/rt/tcms/__visit
    end
    return
   end
   local.get $0
   local.tee $1
   i32.load offset=4
   local.tee $0
   if
    local.get $0
    call $~lib/rt/tcms/__visit
   end
   local.get $1
   i32.load offset=8
   local.tee $1
   if
    local.get $1
    call $~lib/rt/tcms/__visit
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/tcms/__visit
  end
 )
 (func $~start
  i32.const 1492
  i32.const 1488
  i32.store
  i32.const 1496
  i32.const 1488
  i32.store
  i32.const 1488
  global.set $~lib/rt/tcms/fromSpace
  i32.const 4628
  i32.const 4624
  i32.store
  i32.const 4632
  i32.const 4624
  i32.store
  i32.const 4624
  global.set $~lib/rt/tcms/pinSpace
  i32.const 4724
  i32.const 4720
  i32.store
  i32.const 4728
  i32.const 4720
  i32.store
  i32.const 4720
  global.set $~lib/rt/tcms/toSpace
 )
)
