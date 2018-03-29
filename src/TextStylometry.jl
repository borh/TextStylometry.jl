module TextStylometry

include("corpus.jl")
include("measures.jl")
include("bootstrap.jl")
include("features.jl")

export Corpus, GenericDocument, SimpleDocument, ComplexityDocument,
    tokens, ttr, sttr, mattr, V, P, MWF, guiraud_r, herdan_c,
    dugast_k, a², dugast_U, LN, brunet_W

end # module
