"""
    equal_windows(N,window)

Create interval sequence given a length `N` and window `window`.

The last window chunk is not returned if leftover is less than `window`.
"""
function equal_windows(N::Int,window::Int)
    leftover = mod(N,window)
    1:window:N-leftover
end

"""
    bootstrap_window(f,tokens,window)

Calculate `f` on `window`-size chunks of `tokens`.
"""
function bootstrap_window(f::Function,tokens::Vector{T},window=1000) where T
    N = length(tokens)
    Float64[f(@view t[start:start+window-1])
            for start in equal_windows(N,window)]
end

"""
    bootstrap_ci(xs)

Calculates a 95% confidence interval given bootstrap sequence `xs`.
"""
bootstrap_ci(xs) = 1.96*std(xs)/sqrt(length(xs))

"""
    sttr(tokens,window)

Calculate the Standardized Type-Token Ratio on `tokens` given `window` size.
"""
sttr(tokens,window) = mean(bootstrap_window(ttr,tokens,window))
