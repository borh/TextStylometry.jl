test_corpus = joinpath(Base.Filesystem.pwd(), "test_corpus.txt")
@testset "Document read tests" begin
    test_tokens = String["Hello", "there", "This", "is", "a", "sentence"]
    @test tokens(SimpleDocument(test_corpus)) == test_tokens
    @test tokens(ComplexityDocument(test_corpus, "", "", "", "", "", 0, "", "", "")) == test_tokens
end
