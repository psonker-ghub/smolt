# justfile
mod? tasks 'scripts/tasks.justfile'

default:
    @just --list

run:
    cargo run

test:
    cargo test --all-features

lint:
    cargo fmt --check
    cargo clippy --all-targets -- -D warnings

ci: lint test
