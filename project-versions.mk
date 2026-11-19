# Versions of GHC and stackage resolver, the ones we're on and the next ones
# we're upgrading to.
GHC_VERSION ?= 9.10.3
STACKAGE_VERSION ?= lts-24.48

# For the upgrade, pick a matching pair of ghc-version and stack resolver.
# Leave these unset when not upgrading; they must differ from the versions
# above.
GHC_UPGRADE ?= 9.12.4
STACKAGE_UPGRADE ?= nightly-2026-11-19

# Imports can be relative to the project or relative to importing file.
# ImportRelative works with cabal-3.10 and is the default.
# ProjectRelative works with cabal-3.8.
CABAL_RELATIVITY ?= ImportRelative
