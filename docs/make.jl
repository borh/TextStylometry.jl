using Documenter, TextStylometry

makedocs(
    format = :html,
    sitename = "Text Stylometry",
    modules = [TextStylometry],
    pages = [
        "index.md",
        "Corpus" => "corpus.md",
        "Measures" => "measures.md",
    ]
)

# deploydocs(
#     repo   = "github.com/borh/TextStylometry.jl.git",
#     target = "build",
#     deps   = nothing, # Deps.pip("pygments", "mkdocs", "python-markdown-math"),
#     make   = nothing
# )
