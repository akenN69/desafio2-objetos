#Ejercicio 1: Sintaxis

class Anything
    attr_accessor :attr_accessor
    def foo
        @a = 5
    end
    def bar
        @a += 1
    end
end

any = Anything.new
any.foo
any.bar
any.a
