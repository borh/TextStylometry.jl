"""
    V(N)

Vocabulary size. (Tweedie & Baayen, 1998: p. 326)
"""
V(N::Int) = unique() # TODO

"""
    V(i,N)

Frequency spectrum
"""
V(i::Int,N::Int) = unique() # TODO

# function frequency_spectrum(tokens)
#     fl = Dict{String,Int64}()
#     fs = Dict{Int64,Int64}()
#     for token in tokens
#         fl[token] = get(fl, token, 0) + 1
#     end
#     for f in values(fl)
#         fs[f] = get(fs, f, 0) + 1
#     end
#     fs
# end

"""
    P(N)

Vocabulary growth rate. (Tweedie & Baayen, 1998: p. 325)
"""
P(N::Int) = V(1, N)/N

"""
    MWF(N)

Mean word frequency (Eq. 2)

```math
MWF(N) = \\frac{N}{V(N)}
```
"""
MWF(N) = N/V(N)

"""
    TTR(N)

Type token ratio (Eq. 3)

```math
TTR(N) = \\frac{V(N)}{N}
```
"""
ttr(tokens::Array{T}) where T = length(unique(tokens))/length(tokens)

"""
    guiraud_r(N)

Guiraud (1954) (T&B Eq. 4)

```math
r = \\frac{V(N)}{\\sqrt{N}}
```
"""
guiraud_r(N) = V(N)/sqrt(N)

"""
    herdan_c(N,c)

Herdan (1960; 1964) (T&B Eq. 5)

```math
c = 0.0
```
"""
herdan_c(N,c) = log(N^c)/log(N)

"""
    dugast_k(N)

Dugast (1979) (T&B Eq. 6)

```math
k = \\frac{\\log V(N)}{\\log(\\log N)}
```
"""
dugast_k(N) = log(log(k,N))/log(log(N))

"""
    a²(N)

Maas (1972)

```math
V(N) = N \\log^{-a^2} N
```
"""
a²(N) = (log(N)-log(V(N)))/log(2,N)

"""
    dugast_U(N)

Dugast U (1978, 1979) (Eq. 8)

```math
V(N) = N \\log^{-1/U} N
```
"""
dugast_U(N) = 1/a²(N)

"""
    LN(N)

Lukjanenkov & Nesitoj (1975; in Tulvada, 1977) (Eq. 9)

```math
V(N) = \\frac{1}{\\sqrt{1 + LN \\log N}}
```
"""
LN(N) = (1-V(N)^2)/(V(N)^2*log(N))

"""
    brunet_W(N)

Brunet's parametric expression W (1978) (Eq. 10)

```math
W = N^{V(N)^{-a}},
```
where ```a = -0.172``` and
```math
V(N) = (\\frac{\\log W}{\\log N})^a = \\log^a_N W.
```
"""
brunet_W(N) = N^(V(N)^(-0.172))
