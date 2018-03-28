using BenchmarkTools
using PkgBenchmark

using TextStylometry

# Define a parent BenchmarkGroup to contain our suite
const SUITE = BenchmarkGroup()

SUITE["SimpleDocument"] = BenchmarkGroup(["english", "japanese"])
SUITE["ComplexityDocument"] = BenchmarkGroup(["english", "japanese"])

test_file = "test_corpus.txt"
SUITE["SimpleDocument"]["file"] = @benchmarkable SimpleDocument($test_file)
SUITE["SimpleDocument"]["tokens"] = @benchmarkable tokens(SimpleDocument($test_file))
