@testset "equal_windows" begin
    @test collect(equal_windows(3,2)) == [1]
    @test collect(equal_windows(2,1)) == [1,2]
end
@testset "STTR" begin
    @test sttr(["a","b","a","c","c"],3) == 0.6666666666666666
end
