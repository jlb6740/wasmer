(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $multiply)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "dispatch" (func $dispatch))
 (export "multiply" (func $multiply))
 (export "main" (func $main))
 (func $dispatch (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call_indirect (type $FUNCSIG$iii)
   (get_local $1)
   (get_local $2)
   (get_local $0)
  )
 )
 (func $multiply (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.mul
   (get_local $1)
   (get_local $0)
  )
 )
 (func $main (; 2 ;) (result i32)
  (call $dispatch
   (i32.const 0)
   (i32.const 20)
   (i32.const 30)
  )
 )
)
