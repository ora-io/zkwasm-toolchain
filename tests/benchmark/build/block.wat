(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "require" (func $common/zkwasm/require (param i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 1036) "l")
 (data $0.1 (i32.const 1048) "\02\00\00\00T\00\00\000\00x\00a\006\000\00e\00c\00f\003\002\003\000\009\005\003\009\00d\00d\008\004\00f\002\007\00a\009\005\006\003\007\005\004\00d\00c\00a\008\001\008\00b\000\000\000\001")
 (data $1 (i32.const 1148) "<")
 (data $1.1 (i32.const 1160) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $2 (i32.const 1212) "<")
 (data $2.1 (i32.const 1224) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data $3 (i32.const 1276) ",")
 (data $3.1 (i32.const 1288) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $4 (i32.const 1324) "<")
 (data $4.1 (i32.const 1336) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $5 (i32.const 1388) "<")
 (data $5.1 (i32.const 1400) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $6 (i32.const 1452) "<")
 (data $6.1 (i32.const 1464) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $7 (i32.const 1516) ",")
 (data $7.1 (i32.const 1528) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $8 (i32.const 1564) "l")
 (data $8.1 (i32.const 1576) "\02\00\00\00T\00\00\000\00x\00d\00d\008\004\00f\002\007\00a\009\00a\006\000\00e\00c\00f\003\002\003\000\009\005\003\009\005\006\003\007\005\004\00d\00c\00a\008\001\008\00b\000\000\000\002")
 (data $9 (i32.const 1676) "|")
 (data $9.1 (i32.const 1688) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $10 (i32.const 1804) "\1c")
 (data $10.1 (i32.const 1816) "\02")
 (data $11 (i32.const 1836) "\1c")
 (data $11.1 (i32.const 1848) "\02\00\00\00\02\00\00\000")
 (data $12 (i32.const 1868) "\1c")
 (data $12.1 (i32.const 1880) "\02\00\00\00\02\00\00\00x")
 (data $13 (i32.const 1900) "|")
 (data $13.1 (i32.const 1912) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $14 (i32.const 2028) "<")
 (data $14.1 (i32.const 2040) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $15 (i32.const 2092) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $16 (i32.const 2492) "\1c\04")
 (data $16.1 (i32.const 2504) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $17 (i32.const 3548) "\\")
 (data $17.1 (i32.const 3560) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $18 (i32.const 3644) "\1c")
 (data $18.1 (i32.const 3656) "\02\00\00\00\04\00\00\000\00x")
 (export "zkmain" (func $test/block/main/zkmain))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.tee $4
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $3
  i32.const 4
  i32.add
  local.tee $2
  local.get $4
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $4
  i32.add
  local.tee $5
  memory.size $0
  local.tee $6
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $7
  i32.gt_u
  if
   local.get $6
   local.get $5
   local.get $7
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $7
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $3
  local.get $4
  i32.store $0
  local.get $2
  i32.const 4
  i32.sub
  local.tee $3
  i32.const 0
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  i32.store $0 offset=8
  local.get $3
  local.get $1
  i32.store $0 offset=12
  local.get $3
  local.get $0
  i32.store $0 offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $test/block/main/Event#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  i32.const 24
  i32.const 5
  call $~lib/rt/stub/__new
  local.tee $6
  local.get $0
  i32.store $0
  local.get $6
  local.get $1
  i32.store $0 offset=4
  local.get $6
  local.get $2
  i32.store $0 offset=8
  local.get $6
  local.get $3
  i32.store $0 offset=12
  local.get $6
  local.get $4
  i32.store $0 offset=16
  local.get $6
  local.get $5
  i32.store $0 offset=20
  local.get $6
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8 $0
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 $0 offset=1
   local.get $0
   i32.const 0
   i32.store8 $0 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8 $0
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8 $0
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 $0 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8 $0
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   local.get $0
   i32.add
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   local.tee $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store $0
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store $0 offset=12
   local.get $0
   i32.const 0
   i32.store $0 offset=16
   local.get $0
   i32.const 0
   i32.store $0 offset=20
   local.get $0
   i32.const 0
   i32.store $0 offset=24
   local.get $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store $0
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store $0
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store $0
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store $0
     local.get $0
     i64.const 0
     i64.store $0 offset=8
     local.get $0
     i64.const 0
     i64.store $0 offset=16
     local.get $0
     i64.const 0
     i64.store $0 offset=24
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
 (func $common/types/bytes/ByteArray#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 8
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  local.get $2
  i32.store $0
  local.get $0
  local.get $2
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
 )
 (func $common/types/bytes/ByteArray.empty (result i32)
  (local $0 i32)
  i32.const 0
  i32.const 4
  call $common/types/bytes/ByteArray#constructor
  local.tee $0
  i32.load $0 offset=8
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  i32.const 0
  i32.store8 $0
  local.get $0
  i32.load $0 offset=8
  i32.const 1
  i32.le_u
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  i32.const 0
  i32.store8 $0 offset=1
  local.get $0
  i32.load $0 offset=8
  i32.const 2
  i32.le_u
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  i32.const 0
  i32.store8 $0 offset=2
  local.get $0
  i32.load $0 offset=8
  i32.const 3
  i32.le_u
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  i32.const 0
  i32.store8 $0 offset=3
  local.get $0
 )
 (func $~lib/array/Array<test/block/main/Event>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 0
  i32.store $0 offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $0
  i32.const 32
  i32.store $0 offset=8
  local.get $0
  i32.const 0
  i32.store $0 offset=12
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
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u $0
    i32.store8 $0
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
     i32.load $0
     i32.store $0
     local.get $0
     local.get $1
     i32.load $0 offset=4
     i32.store $0 offset=4
     local.get $0
     local.get $1
     i32.load $0 offset=8
     i32.store $0 offset=8
     local.get $0
     local.get $1
     i32.load $0 offset=12
     i32.store $0 offset=12
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
    i32.load $0
    i32.store $0
    local.get $0
    local.get $1
    i32.load $0 offset=4
    i32.store $0 offset=4
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
    i32.load $0
    i32.store $0
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
    i32.load16_u $0
    i32.store16 $0
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
    i32.load8_u $0
    i32.store8 $0
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
      i32.load $0
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u $0
      i32.store8 $0
      local.get $0
      local.get $1
      i32.load8_u $0 offset=1
      i32.store8 $0 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u $0
      i32.store8 $0
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
        i32.load $0 offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store $0
        local.get $0
        local.get $1
        i32.load $0 offset=5
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store $0 offset=4
        local.get $0
        local.get $1
        i32.load $0 offset=9
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store $0 offset=8
        local.get $0
        local.get $1
        i32.load $0 offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store $0 offset=12
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
     i32.load $0
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u $0
     i32.store8 $0
     local.get $0
     local.tee $3
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 2
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u $0 offset=1
     i32.store8 $0 offset=1
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
       i32.load $0 offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store $0
       local.get $0
       local.get $1
       i32.load $0 offset=6
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store $0 offset=4
       local.get $0
       local.get $1
       i32.load $0 offset=10
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store $0 offset=8
       local.get $0
       local.get $1
       i32.load $0 offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store $0 offset=12
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
    i32.load $0
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u $0
    i32.store8 $0
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
      i32.load $0 offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store $0
      local.get $0
      local.get $1
      i32.load $0 offset=7
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store $0 offset=4
      local.get $0
      local.get $1
      i32.load $0 offset=11
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store $0 offset=8
      local.get $0
      local.get $1
      i32.load $0 offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store $0 offset=12
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
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u $0
   i32.store8 $0
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u $0
   i32.store8 $0
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.get $1
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u $0
   i32.store8 $0
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
   local.get $0
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
   i32.load8_u $0
   i32.store8 $0
   local.get $0
   local.tee $3
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u $0 offset=1
   i32.store8 $0 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u $0
   i32.store8 $0
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
       i32.load8_u $0
       i32.store8 $0
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
       i64.load $0
       i64.store $0
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
      i32.load8_u $0
      i32.store8 $0
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
       local.get $0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u $0
       i32.store8 $0
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load $0
       i64.store $0
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u $0
      i32.store8 $0
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/array/Array<test/block/main/Event>#push (param $0 i32) (param $1 i32)
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
  local.get $0
  i32.load $0 offset=12
  local.tee $10
  i32.const 1
  i32.add
  local.tee $14
  local.get $0
  i32.load $0 offset=8
  local.tee $12
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $14
   i32.const 268435455
   i32.gt_u
   if
    unreachable
   end
   local.get $0
   i32.load $0
   local.set $11
   i32.const 1073741820
   local.get $12
   i32.const 1
   i32.shl
   local.tee $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.const 8
   local.get $14
   local.get $14
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $2
   local.get $2
   local.get $3
   i32.lt_u
   select
   local.tee $13
   i32.const 1073741804
   i32.gt_u
   if
    unreachable
   end
   local.get $11
   i32.const 16
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   local.tee $7
   i32.load $0
   local.set $8
   global.get $~lib/rt/stub/offset
   local.get $3
   local.get $8
   i32.add
   i32.eq
   local.set $4
   local.get $13
   i32.const 16
   i32.add
   local.tee $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
   local.set $6
   local.get $2
   local.get $8
   i32.gt_u
   if
    local.get $4
    if
     local.get $2
     i32.const 1073741820
     i32.gt_u
     if
      unreachable
     end
     local.get $3
     local.get $6
     i32.add
     local.tee $5
     memory.size $0
     local.tee $4
     i32.const 16
     i32.shl
     i32.const 15
     i32.add
     i32.const -16
     i32.and
     local.tee $2
     i32.gt_u
     if
      local.get $4
      local.get $5
      local.get $2
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee $2
      local.get $2
      local.get $4
      i32.lt_s
      select
      memory.grow $0
      i32.const 0
      i32.lt_s
      if
       local.get $2
       memory.grow $0
       i32.const 0
       i32.lt_s
       if
        unreachable
       end
      end
     end
     local.get $5
     global.set $~lib/rt/stub/offset
     local.get $7
     local.get $6
     i32.store $0
    else
     local.get $6
     local.get $8
     i32.const 1
     i32.shl
     local.tee $2
     local.get $2
     local.get $6
     i32.lt_u
     select
     local.tee $4
     i32.const 1073741820
     i32.gt_u
     if
      unreachable
     end
     global.get $~lib/rt/stub/offset
     local.tee $7
     i32.const 4
     i32.add
     local.tee $2
     local.get $4
     i32.const 19
     i32.add
     i32.const -16
     i32.and
     i32.const 4
     i32.sub
     local.tee $6
     i32.add
     local.tee $5
     memory.size $0
     local.tee $9
     i32.const 16
     i32.shl
     i32.const 15
     i32.add
     i32.const -16
     i32.and
     local.tee $4
     i32.gt_u
     if
      local.get $9
      local.get $5
      local.get $4
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee $4
      local.get $4
      local.get $9
      i32.lt_s
      select
      memory.grow $0
      i32.const 0
      i32.lt_s
      if
       local.get $4
       memory.grow $0
       i32.const 0
       i32.lt_s
       if
        unreachable
       end
      end
     end
     local.get $5
     global.set $~lib/rt/stub/offset
     local.get $7
     local.get $6
     i32.store $0
     local.get $2
     local.get $3
     local.get $8
     call $~lib/memory/memory.copy
     local.get $2
     local.set $3
    end
   else
    local.get $4
    if
     local.get $3
     local.get $6
     i32.add
     global.set $~lib/rt/stub/offset
     local.get $7
     local.get $6
     i32.store $0
    end
   end
   local.get $3
   i32.const 4
   i32.sub
   local.get $13
   i32.store $0 offset=16
   local.get $3
   i32.const 16
   i32.add
   local.tee $2
   local.get $12
   i32.add
   local.get $13
   local.get $12
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $11
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store $0
    local.get $0
    local.get $2
    i32.store $0 offset=4
   end
   local.get $0
   local.get $13
   i32.store $0 offset=8
  end
  local.get $0
  i32.load $0 offset=4
  local.get $10
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0
  local.get $0
  local.get $14
  i32.store $0 offset=12
 )
 (func $test/block/main/BlockMutable#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i64.store $0 offset=8
  local.get $2
  call $~lib/array/Array<test/block/main/Event>#constructor
  i32.store $0
  i32.const 16
  i32.const 11
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 0
  i32.store $0 offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  i32.store $0
  local.get $1
  local.get $3
  i32.store $0 offset=4
  local.get $1
  i32.const 32
  i32.store $0 offset=8
  local.get $1
  i32.const 0
  i32.store $0 offset=12
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  local.get $0
  i32.eqz
  i32.or
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load $0
    local.get $1
    i64.load $0
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $1
     i32.const 8
     i32.add
     local.set $1
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
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u $0
     local.tee $5
     local.get $1
     i32.load16_u $0
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~lib/string/String#charAt (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1052
  i32.load $0
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 1824
   return
  end
  i32.const 2
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 1056
  i32.add
  i32.load16_u $0
  i32.store16 $0
  local.get $1
 )
 (func $~lib/string/String#substr (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
   local.set $1
  end
  local.get $1
  i32.sub
  local.tee $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 0
  i32.le_s
  if
   i32.const 1824
   return
  end
  local.get $2
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.tee $2
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const -2
  i32.and
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const -2
  i32.and
  local.tee $5
  i32.add
  local.set $4
  i32.const 1824
  local.set $0
  local.get $4
  if
   local.get $4
   i32.const 2
   call $~lib/rt/stub/__new
   local.tee $0
   local.get $2
   local.get $3
   call $~lib/memory/memory.copy
   local.get $0
   local.get $3
   i32.add
   local.get $1
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $0
 )
 (func $~lib/util/string/strtol<i32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.load16_u $0
  local.set $0
  loop $while-continue|0
   block $__inlined_func$~lib/util/string/isSpace (result i32)
    local.get $0
    i32.const 128
    i32.or
    i32.const 160
    i32.eq
    local.get $0
    i32.const 9
    i32.sub
    i32.const 4
    i32.le_u
    i32.or
    local.get $0
    i32.const 5760
    i32.lt_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    i32.const 1
    local.get $0
    i32.const -8192
    i32.add
    i32.const 10
    i32.le_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    block $break|0
     block $case6|0
      local.get $0
      i32.const 5760
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8232
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8233
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8239
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8287
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 12288
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 65279
      i32.eq
      br_if $case6|0
      br $break|0
     end
     i32.const 1
     br $__inlined_func$~lib/util/string/isSpace
    end
    i32.const 0
   end
   if
    local.get $2
    i32.const 2
    i32.add
    local.tee $2
    i32.load16_u $0
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $while-continue|0
   end
  end
  i32.const 1
  local.set $3
  local.get $0
  i32.const 43
  i32.eq
  local.get $0
  i32.const 45
  i32.eq
  i32.or
  if (result i32)
   local.get $1
   i32.const 1
   i32.sub
   local.tee $1
   i32.eqz
   if
    i32.const 0
    return
   end
   i32.const -1
   i32.const 1
   local.get $0
   i32.const 45
   i32.eq
   select
   local.set $3
   local.get $2
   i32.const 2
   i32.add
   local.tee $2
   i32.load16_u $0
  else
   local.get $0
  end
  i32.const 48
  i32.eq
  local.get $1
  i32.const 2
  i32.gt_s
  i32.and
  if (result i32)
   local.get $2
   i32.load16_u $0 offset=2
   i32.const 32
   i32.or
   i32.const 120
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $2
   i32.const 4
   i32.add
   local.set $2
   local.get $1
   i32.const 2
   i32.sub
   local.set $1
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $5
  loop $while-continue|2
   local.get $1
   local.tee $0
   i32.const 1
   i32.sub
   local.set $1
   local.get $0
   if
    block $while-break|2
     local.get $2
     i32.load16_u $0
     local.tee $0
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 48
      i32.sub
     else
      local.get $0
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      if (result i32)
       local.get $0
       i32.const 55
       i32.sub
      else
       local.get $0
       i32.const 87
       i32.sub
       local.get $0
       local.get $0
       i32.const 97
       i32.sub
       i32.const 25
       i32.le_u
       select
      end
     end
     local.tee $0
     i32.const 16
     i32.ge_u
     if
      local.get $1
      local.get $5
      i32.eq
      if
       i32.const 0
       return
      end
      br $while-break|2
     end
     local.get $4
     i32.const 4
     i32.shl
     local.get $0
     i32.add
     local.set $4
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|2
    end
   end
  end
  local.get $3
  local.get $4
  i32.mul
 )
 (func $test/block/main/zkmain
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  i32.const 1056
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $test/block/main/Event#constructor
  local.set $0
  i32.const 1056
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $test/block/main/Event#constructor
  local.set $2
  call $~lib/array/Array<test/block/main/Event>#constructor
  local.tee $4
  local.get $0
  call $~lib/array/Array<test/block/main/Event>#push
  local.get $4
  local.get $2
  call $~lib/array/Array<test/block/main/Event>#push
  i32.const 8
  i32.const 10
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 1056
  i32.store $0
  local.get $0
  local.get $4
  i32.store $0 offset=4
  i32.const 1584
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $test/block/main/Event#constructor
  local.set $2
  i32.const 1584
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $common/types/bytes/ByteArray.empty
  call $test/block/main/Event#constructor
  local.set $4
  call $~lib/array/Array<test/block/main/Event>#constructor
  local.tee $6
  local.get $2
  call $~lib/array/Array<test/block/main/Event>#push
  local.get $6
  local.get $4
  call $~lib/array/Array<test/block/main/Event>#push
  i32.const 8
  i32.const 10
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 1584
  i32.store $0
  local.get $2
  local.get $6
  i32.store $0 offset=4
  i64.const 100
  call $test/block/main/BlockMutable#constructor
  local.tee $4
  i32.load $0 offset=4
  local.get $0
  call $~lib/array/Array<test/block/main/Event>#push
  local.get $4
  i32.load $0 offset=4
  local.get $2
  call $~lib/array/Array<test/block/main/Event>#push
  i64.const 101
  call $test/block/main/BlockMutable#constructor
  local.tee $6
  i32.load $0 offset=4
  local.get $0
  call $~lib/array/Array<test/block/main/Event>#push
  local.get $6
  i32.load $0 offset=4
  local.get $2
  call $~lib/array/Array<test/block/main/Event>#push
  i32.const 16
  i32.const 12
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 0
  i32.store $0 offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $2
  i32.store $0
  local.get $0
  local.get $2
  i32.store $0 offset=4
  local.get $0
  i32.const 32
  i32.store $0 offset=8
  local.get $0
  i32.const 0
  i32.store $0 offset=12
  local.get $0
  local.get $4
  call $~lib/array/Array<test/block/main/Event>#push
  local.get $0
  local.get $6
  call $~lib/array/Array<test/block/main/Event>#push
  local.get $0
  i32.load $0 offset=12
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  i32.load $0
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load $0 offset=4
   i32.load $0 offset=12
   i32.lt_s
   if
    block $for-break0
     local.get $1
     local.get $0
     i32.load $0 offset=4
     local.tee $2
     i32.load $0 offset=12
     i32.ge_u
     if
      unreachable
     end
     local.get $2
     i32.load $0 offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load $0
     local.tee $2
     i32.eqz
     if
      unreachable
     end
     local.get $2
     i32.load $0
     i32.const 1056
     call $~lib/string/String.__eq
     br_if $for-break0
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
  end
  local.get $1
  local.get $0
  i32.load $0 offset=4
  local.tee $0
  i32.load $0 offset=12
  i32.ge_u
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $0
  i32.load $0 offset=12
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  i32.load $0
  local.tee $0
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.load $0
  local.set $2
  i32.const 1052
  i32.load $0
  i32.const 1
  i32.shr_u
  i32.const 2
  i32.ge_u
  if (result i32)
   i32.const 0
   call $~lib/string/String#charAt
   i32.const 1856
   call $~lib/string/String.__eq
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
   call $~lib/string/String#charAt
   i32.const 1888
   call $~lib/string/String.__eq
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1056
   i32.const 2
   i32.const 2147483647
   call $~lib/string/String#substr
  else
   i32.const 1056
  end
  local.tee $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.and
  if
   i32.const 1856
   local.get $0
   call $~lib/string/String.__concat
   local.set $0
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 2
  i32.shr_u
  local.set $1
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__new
  local.get $1
  call $common/types/bytes/ByteArray#constructor
  local.set $6
  i32.const 0
  local.set $1
  loop $for-loop|00
   local.get $1
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 2
    call $~lib/string/String#substr
    call $~lib/util/string/strtol<i32>
    local.set $4
    local.get $1
    i32.const 2
    i32.div_s
    local.tee $7
    local.get $6
    i32.load $0 offset=8
    i32.ge_u
    if
     unreachable
    end
    local.get $7
    local.get $6
    i32.load $0 offset=4
    i32.add
    local.get $4
    i32.store8 $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $for-loop|00
   end
  end
  i32.const 1824
  local.set $0
  loop $for-loop|01
   local.get $5
   local.get $6
   i32.load $0 offset=8
   i32.lt_s
   if
    local.get $5
    local.get $6
    i32.load $0 offset=8
    i32.ge_u
    if
     unreachable
    end
    local.get $0
    local.set $1
    i32.const 0
    local.set $4
    local.get $6
    i32.load $0 offset=4
    local.get $5
    i32.add
    i32.load8_u $0
    local.tee $7
    if (result i32)
     i32.const 31
     local.get $7
     i32.clz
     i32.sub
     i32.const 2
     i32.shr_s
     i32.const 1
     i32.add
     local.tee $0
     i32.const 1
     i32.shl
     i32.const 2
     call $~lib/rt/stub/__new
     local.set $8
     local.get $7
     i64.extend_i32_u
     local.set $3
     loop $while-continue|01
      local.get $0
      i32.const 2
      i32.ge_u
      if
       local.get $8
       local.get $0
       i32.const 2
       i32.sub
       local.tee $0
       i32.const 1
       i32.shl
       i32.add
       local.get $3
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 2
       i32.shl
       i32.const 2512
       i32.add
       i32.load $0
       i32.store $0
       local.get $3
       i64.const 8
       i64.shr_u
       local.set $3
       br $while-continue|01
      end
     end
     local.get $0
     i32.const 1
     i32.and
     if
      local.get $8
      local.get $3
      i32.wrap_i64
      i32.const 6
      i32.shl
      i32.const 2512
      i32.add
      i32.load16_u $0
      i32.store16 $0
     end
     local.get $8
    else
     i32.const 1856
    end
    local.set $7
    local.get $1
    i32.const 1852
    i32.load $0
    i32.const -2
    i32.and
    local.tee $8
    i32.eqz
    local.get $7
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const -2
    i32.and
    local.tee $0
    i32.const 4
    i32.gt_u
    i32.or
    if (result i32)
     local.get $7
    else
     i32.const 4
     i32.const 2
     call $~lib/rt/stub/__new
     local.set $9
     i32.const 4
     local.get $0
     i32.sub
     local.tee $1
     local.get $8
     i32.gt_u
     if
      local.get $1
      local.get $1
      i32.const 2
      i32.sub
      local.get $8
      i32.div_u
      local.get $8
      i32.mul
      local.tee $10
      i32.sub
      local.set $11
      loop $while-continue|0
       local.get $4
       local.get $10
       i32.lt_u
       if
        local.get $4
        local.get $9
        i32.add
        i32.const 1856
        local.get $8
        call $~lib/memory/memory.copy
        local.get $4
        local.get $8
        i32.add
        local.set $4
        br $while-continue|0
       end
      end
      local.get $9
      local.get $10
      i32.add
      i32.const 1856
      local.get $11
      call $~lib/memory/memory.copy
     else
      local.get $9
      i32.const 1856
      local.get $1
      call $~lib/memory/memory.copy
     end
     local.get $1
     local.get $9
     i32.add
     local.get $7
     local.get $0
     call $~lib/memory/memory.copy
     local.get $9
    end
    call $~lib/string/String.__concat
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|01
   end
  end
  local.get $2
  i32.const 3664
  local.get $0
  call $~lib/string/String.__concat
  call $~lib/string/String.__eq
  call $common/zkwasm/require
 )
 (func $~start
  i32.const 3676
  global.set $~lib/rt/stub/offset
 )
)
