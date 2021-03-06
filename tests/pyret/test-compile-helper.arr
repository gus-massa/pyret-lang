provide *
import "compiler/compile.arr" as CM
import "compiler/compile-structs.arr" as CS

compile-str = lam(str):
  CM.compile-js(
          CM.start,
          "Pyret",
          str,
          "test",
          CS.standard-builtins,
          {
            check-mode : true,
            allow-shadowed : false,
            collect-all: false,
            type-check: false,
            ignore-unbound: false
          }
          ).result
end

