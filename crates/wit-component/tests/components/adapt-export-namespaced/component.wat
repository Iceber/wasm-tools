(component
  (core module (;0;)
    (type (;0;) (func))
    (import "__main_module__" "the_entrypoint" (func $entry (;0;) (type 0)))
    (export "new#entrypoint" (func $entry))
  )
  (type (;0;) (func))
  (core module (;1;)
    (type (;0;) (func))
    (func (;0;) (type 0))
    (export "the_entrypoint" (func 0))
  )
  (core instance (;0;) (instantiate 1))
  (alias core export 0 "the_entrypoint" (core func (;0;)))
  (core instance (;1;)
    (export "the_entrypoint" (func 0))
  )
  (core instance (;2;) (instantiate 0
      (with "__main_module__" (instance 1))
    )
  )
  (alias core export 2 "new#entrypoint" (core func (;1;)))
  (func (;0;) (type 0) (canon lift (core func 1)))
  (instance (;0;)
    (export "entrypoint" (func 0))
  )
  (export "new" (instance 0))
)