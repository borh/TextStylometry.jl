var documenterSearchIndex = {"docs": [

{
    "location": "index.html#",
    "page": "TextStylometry documentation",
    "title": "TextStylometry documentation",
    "category": "page",
    "text": ""
},

{
    "location": "index.html#TextStylometry-documentation-1",
    "page": "TextStylometry documentation",
    "title": "TextStylometry documentation",
    "category": "section",
    "text": "CurrentModule = TextStylometry"
},

{
    "location": "index.html#Index-1",
    "page": "TextStylometry documentation",
    "title": "Index",
    "category": "section",
    "text": ""
},

{
    "location": "corpus.html#",
    "page": "Corpus",
    "title": "Corpus",
    "category": "page",
    "text": ""
},

{
    "location": "corpus.html#TextStylometry.Corpus",
    "page": "Corpus",
    "title": "TextStylometry.Corpus",
    "category": "type",
    "text": "Corpus\n\n\n\n"
},

{
    "location": "corpus.html#TextStylometry.GenericDocument",
    "page": "Corpus",
    "title": "TextStylometry.GenericDocument",
    "category": "type",
    "text": "Generic document metadata container\n\n\n\n"
},

{
    "location": "corpus.html#TextStylometry.SimpleDocument",
    "page": "Corpus",
    "title": "TextStylometry.SimpleDocument",
    "category": "type",
    "text": "Simple document container identified with filename\n\n\n\n"
},

{
    "location": "corpus.html#TextStylometry.ComplexityDocument",
    "page": "Corpus",
    "title": "TextStylometry.ComplexityDocument",
    "category": "type",
    "text": "Extralinguistic document metadata for complexity project\n\n\n\n"
},

{
    "location": "corpus.html#Corpus-1",
    "page": "Corpus",
    "title": "Corpus",
    "category": "section",
    "text": "Corpus\nGenericDocument\nSimpleDocument\nComplexityDocument"
},

{
    "location": "features.html#",
    "page": "Features",
    "title": "Features",
    "category": "page",
    "text": ""
},

{
    "location": "features.html#TextStylometry.tokenfrequencies",
    "page": "Features",
    "title": "TextStylometry.tokenfrequencies",
    "category": "function",
    "text": "tokenfrequencies(corpus)\n\nReturn a counter (dict) of the token frequencies for corpus.\n\n\n\n"
},

{
    "location": "features.html#Features-1",
    "page": "Features",
    "title": "Features",
    "category": "section",
    "text": "tokenfrequencies"
},

{
    "location": "measures.html#",
    "page": "Measures",
    "title": "Measures",
    "category": "page",
    "text": ""
},

{
    "location": "measures.html#TextStylometry.V",
    "page": "Measures",
    "title": "TextStylometry.V",
    "category": "function",
    "text": "V(N)\n\nVocabulary size. (Tweedie & Baayen, 1998: p. 326)\n\n\n\nV(i,N)\n\nFrequency spectrum\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.P",
    "page": "Measures",
    "title": "TextStylometry.P",
    "category": "function",
    "text": "P(N)\n\nVocabulary growth rate. (Tweedie & Baayen, 1998: p. 325)\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.MWF",
    "page": "Measures",
    "title": "TextStylometry.MWF",
    "category": "function",
    "text": "MWF(N)\n\nMean word frequency (Eq. 2)\n\nMWF(N) = fracNV(N)\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.ttr",
    "page": "Measures",
    "title": "TextStylometry.ttr",
    "category": "function",
    "text": "TTR(N)\n\nType token ratio (Eq. 3)\n\nTTR(N) = fracV(N)N\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.guiraud_r",
    "page": "Measures",
    "title": "TextStylometry.guiraud_r",
    "category": "function",
    "text": "guiraud_r(N)\n\nGuiraud (1954) (T&B Eq. 4)\n\nr = fracV(N)sqrtN\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.herdan_c",
    "page": "Measures",
    "title": "TextStylometry.herdan_c",
    "category": "function",
    "text": "herdan_c(N,c)\n\nHerdan (1960; 1964) (T&B Eq. 5)\n\nc = 00\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.dugast_k",
    "page": "Measures",
    "title": "TextStylometry.dugast_k",
    "category": "function",
    "text": "dugast_k(N)\n\nDugast (1979) (T&B Eq. 6)\n\nk = fraclog V(N)log(log N)\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.a²",
    "page": "Measures",
    "title": "TextStylometry.a²",
    "category": "function",
    "text": "a²(N)\n\nMaas (1972)\n\nV(N) = N log^-a^2 N\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.dugast_U",
    "page": "Measures",
    "title": "TextStylometry.dugast_U",
    "category": "function",
    "text": "dugast_U(N)\n\nDugast U (1978, 1979) (Eq. 8)\n\nV(N) = N log^-1U N\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.LN",
    "page": "Measures",
    "title": "TextStylometry.LN",
    "category": "function",
    "text": "LN(N)\n\nLukjanenkov & Nesitoj (1975; in Tulvada, 1977) (Eq. 9)\n\nV(N) = frac1sqrt1 + LN log N\n\n\n\n"
},

{
    "location": "measures.html#TextStylometry.brunet_W",
    "page": "Measures",
    "title": "TextStylometry.brunet_W",
    "category": "function",
    "text": "brunet_W(N)\n\nBrunet\'s parametric expression W (1978) (Eq. 10)\n\nW = N^V(N)^-a\n\nwhere a = -0.172 and\n\nV(N) = (fraclog Wlog N)^a = log^a_N W\n\n\n\n"
},

{
    "location": "measures.html#Measures-1",
    "page": "Measures",
    "title": "Measures",
    "category": "section",
    "text": "V\nP\nMWF\nttr\nguiraud_r\nherdan_c\ndugast_k\na²\ndugast_U\nLN\nbrunet_W"
},

{
    "location": "bootstrap.html#",
    "page": "Bootstrap measures",
    "title": "Bootstrap measures",
    "category": "page",
    "text": ""
},

{
    "location": "bootstrap.html#TextStylometry.equal_windows",
    "page": "Bootstrap measures",
    "title": "TextStylometry.equal_windows",
    "category": "function",
    "text": "equal_windows(N,window)\n\nCreate interval sequence given a length N and window window.\n\nThe last window chunk is not returned if leftover is less than window.\n\n\n\n"
},

{
    "location": "bootstrap.html#TextStylometry.bootstrap_window",
    "page": "Bootstrap measures",
    "title": "TextStylometry.bootstrap_window",
    "category": "function",
    "text": "bootstrap_window(f,tokens,window)\n\nCalculate f on window-size chunks of tokens.\n\n\n\n"
},

{
    "location": "bootstrap.html#TextStylometry.bootstrap_ci",
    "page": "Bootstrap measures",
    "title": "TextStylometry.bootstrap_ci",
    "category": "function",
    "text": "bootstrap_ci(xs)\n\nCalculates a 95% confidence interval given bootstrap sequence xs.\n\n\n\n"
},

{
    "location": "bootstrap.html#TextStylometry.sttr",
    "page": "Bootstrap measures",
    "title": "TextStylometry.sttr",
    "category": "function",
    "text": "sttr(tokens,window)\n\nCalculate the Standardized Type-Token Ratio on tokens given window size.\n\n\n\n"
},

{
    "location": "bootstrap.html#Bootstrap-1",
    "page": "Bootstrap measures",
    "title": "Bootstrap",
    "category": "section",
    "text": "equal_windows\nbootstrap_window\nbootstrap_ci\nsttr"
},

]}
