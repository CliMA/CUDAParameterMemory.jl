using Test
import CUDAParameterMemory as CPM

@testset "@rprint_parameter_memory" begin
    struct Foo{A, B, C}
        a::A
        b::B
        c::C
    end
    f = Foo(Foo(1,1,1), Foo(Foo(1,1,1), 1,1), Foo(1,1,Foo(1,1,1)))
    CPM.@rprint_parameter_memory f
end

