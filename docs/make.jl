using Documenter, TextStylometry

makedocs(
    format = :html,
    sitename = "Text Stylometry",
    modules = [TextStylometry],
    pages = [
        "index.md",
        "Corpus" => "corpus.md",
        "Features" => "features.md",
        "Measures" => "measures.md",
        "Bootstrap measures" => "bootstrap.md",
    ]
)

deploydocs(
    repo   = "github.com/borh/TextStylometry.jl.git",
    target = "build",
    julia  = "0.6",
    deps   = nothing, # Deps.pip("pygments", "mkdocs", "python-markdown-math"),
    make   = nothing
)
