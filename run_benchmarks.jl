benchmarkpkg("TextStylometry",
             BenchmarkConfig(id = "master",
                             juliacmd = `/usr/bin/julia -O3`))
benchmarkpkg("TextStylometry",
             BenchmarkConfig(id = "master",
                             juliacmd = `/home/bor/Dependencies/julia/julia -O3`))
