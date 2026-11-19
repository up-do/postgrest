''
tests: true
allow-newer:
  , fuzzyset:data-default
  , fuzzyset:text
  , *:base
  , *:containers
  , *:template-haskell
  , *:time
  , postgrest:swagger2

-- https://github.com/martijnbastiaan/doctest-parallel/blob/main/example/README.md#cabalproject
write-ghc-environment-files: always
''
