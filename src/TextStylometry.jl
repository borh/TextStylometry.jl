module TextStylometry

include("corpus.jl")
include("features.jl")
include("measures.jl")
include("bootstrap.jl")

export Corpus, GenericDocument, SimpleDocument, ComplexityDocument,
    tokens, tokenfrequencies, equal_windows, bootstrap_window,
    bootstrap_ci, ttr, sttr, mattr, V, P, MWF, guiraud_r, herdan_c,
    dugast_k, a², dugast_U, LN, brunet_W

end # module
