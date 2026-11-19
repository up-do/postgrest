\(_stackage-resolver : Optional Text) ->
  ''
  user-message: "WARNING: This stack project is generated."

  # When updating, update GHC version in .github/workflows/build.yaml as well.
  nix:
    packages:
      - botan3
      - libpq
      - libpq.pg_config
      - pkg-config
      - zlib

  allow-newer: true
  allow-newer-deps:
    - fuzzyset
    - hasql
  ''
