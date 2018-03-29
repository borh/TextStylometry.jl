using DataStructures: counter

"""
    tokenfrequencies(corpus)

Return a counter (dict) of the token frequencies for `corpus`.
"""
function tokenfrequencies(corpus::Array{Vector{T}}) where T
    h = counter(T)
    for tokens in corpus
        push!(h, tokens)
    end
    h
end
