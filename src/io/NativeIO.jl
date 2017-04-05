"""
    Native binary RData format IO stream wrapper.

    TODO write readers
"""
type NativeIO{T<:IO} <: RDAIO
    sub::T               # underlying IO stream

    NativeIO{T}(io::T) where T<:IO = new{T}(io)
    (::Type{NativeIO}){T<:IO}(io::T) = new{T}(io)
end
