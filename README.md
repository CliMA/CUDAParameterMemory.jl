# CUDAParameterMemory.jl

A package for analyzing CUDA parameter memory for large and highly recursive
types (requires CUDA).

## Example
```julia
using CUDAParameterMemory: @rprint_parameter_memory
struct Foo{A, B, C}
    a::A
    b::B
    c::C
end
f = Foo(Foo(1,1,1), Foo(Foo(1,1,1), 1,1), Foo(1,1,Foo(1,1,1)))
@rprint_parameter_memory f
```
