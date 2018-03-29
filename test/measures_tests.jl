@testset "TTR" begin
    @test ttr(["a","b","a","c","b"]) == 0.6
end
