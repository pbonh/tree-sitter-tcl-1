set shell := ["bash", "-uc"]
export BASH_ENV := "$HOME/.nix-profile/etc/profile.d/nix.sh"
ts := "./node_modules/.bin/tree-sitter"

default:
  @just --choose

generate:
  {{ ts }} generate

test:
  {{ ts }} test
