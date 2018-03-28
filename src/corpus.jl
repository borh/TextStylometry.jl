using JLD2 # save, load

"Compressed sparse column format document-term matrix"
struct DocumentTermMatrix
    "ordered term vector"
    terms::Vector{String}
    "term to column index mapping"
    termidx::Dict{String,Int}
    "document-term matrix"
    matrix::SparseMatrixCSC{Int,Int}
end

abstract type AbstractDocument end

"Generic document metadata container"
struct GenericDocument <: AbstractDocument
    filename::String
    metadata::Dict{String,Any}
end

"Simple document container identified with filename"
struct SimpleDocument <: AbstractDocument
    filename::String
end

"Extralinguistic document metadata for complexity project"
struct ComplexityDocument <: AbstractDocument
    filename::String
    id::String
    lang::String
    corpus::String
    author::String
    title::String
    year::Int8
    genre::String
    brow::String
    narrative::String
end

tokens(d::AbstractDocument) = String[
    token
    for line in eachline(d.filename)
    for token in split(line, " ")
    if token != "" && token != "<EOS>" && token != "<PGB>" && token != "<CHB>" && !all(ispunct, token)
]

function sentences(d::AbstractDocument)
    sens = Vector{Vector{String}}()
    tokens = Vector{String}()
    for line in eachline(d.filename)
        if !isempty(tokens) && line == "<EOS>" || line == "<PGB>" || line == "<CHB>"
            push!(sens, tokens)
            tokens = Vector{String}()
        else
            push!(tokens, line)
        end
    end
    sens
end

struct CorpusMetadata
    metadata::Dict{String,Any}
end

mutable struct Corpus{T <: AbstractDocument}
    metadata::CorpusMetadata
    documents::Vector{T}
    ntokens::UInt
    index::Dict{String,UInt}
    inverseindex::Dict{String,Vector{UInt}}
    dtm::SparseMatrixCSC{UInt,UInt}
end

Base.start(c::Corpus) = c.documents[1]
Base.next(c::Corpus, i) = (c.documents[i], i+1)
function Base.getindex(c::Corpus, i::Int)
    1 <= i <= c.ntokens || throw(BoundsError(c, i))
    c.documents[i]
end
Base.getindex(c::Corpus, i::Number) = c[convert(Int, i)]
Base.getindex(c::Corpus, I) = [c[i] for i in I]
Base.endof(c::Corpus) = c.ntokens
Base.getindex(c::Corpus, docname::AbstractString) = get(c.document_names, docname)

"""
    Corpus

"""
function Corpus(cmeta::CorpusMetadata, documents::Vector{T}) where T <: AbstractDocument
    ntokens = 0
    index = Dict{String,UInt}
    inverseindex = Dict{String,Vector{UInt}}

    for doc in documents
        ts = tokens(doc.filename)
        ntokens += length(ts)

    end

    Corpus(
        metadata,
        documents,
        ntokens,
        Dict{String,Int}(),
        Dict{String,Vector{Int}}()
    )
end

metadata(d::AbstractDocument) = d.metadata
