using TextStylometry
using Base.Test

@testset "I/O tests" begin include("corpus_tests.jl") end
@testset "measures tests" begin include("measures_tests.jl") end
@testset "bootstrap tests" begin include("bootstrap_tests.jl") end

using Lint
lintpkg("TextStylometry")
