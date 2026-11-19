CABAL_VIA ?= dhall2cabal

# To use installed executables instead of *.hs scripts, set these to true.
PKG_GROUPS_HS_EXE ?= false
PKGS_SORTED_HS_EXE ?= false
PKGS_UPGRADE_DONE_HS_EXE ?= false

include project-bootstrap.mk
include project-versions.mk
include updo/Makefile

# The upstream Nix build is nixpkgs with callCabal2nix, not haskell.nix, so we
# don't generate Updo's sha256map.nix or project-versions.nix.
.PHONY: all
all: \
  cabal.project \
  stack.yaml \
  stack.yaml.lock

# To make stack.yaml or cabal.project and no other, mark the file we copy from
# as intermediate. This is all we want when not doing a GHC upgrade.
#
# Comment out these .INTERMEDIATE targets to allow these files to be kept.
.INTERMEDIATE: ghc-$(GHC_VERSION).$(CABAL_VIA).project
.INTERMEDIATE: ghc-$(GHC_VERSION).$(STACK_VIA).yaml
ifneq ($(GHC_UPGRADE),)
.INTERMEDIATE: ghc-$(GHC_UPGRADE).$(CABAL_VIA).project
.INTERMEDIATE: ghc-$(GHC_UPGRADE).$(STACK_VIA).yaml
endif

.DEFAULT_GOAL := all
