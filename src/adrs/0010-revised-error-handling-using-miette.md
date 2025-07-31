# 10. Revised error handling using miette

Date: 2025-07-31

## Status

Accepted

## Context

ADR 0007 introduced an error handling scheme using `anyhow` and `thiserror`.

This had several issues:

- error messages lacked context
- the task of implementing it was rather intensive (and not yet complete)

## Decision

Use [`miette`](https://docs.rs/miette/) as the means of error handling, following the [usage guide](https://docs.rs/miette/latest/miette/#using).

In short:

- use `miette::Result<T>` as the default return type of fallible operations
- use `into_diagnostic()` to convert errors
- use `with_context()` as appropriate
- enable the `fancy` feature on binary crates
- continue to use `thiserror` as appropriate
- remove all use of `anyhow`

## Consequences

- error messages will include context, making them more useful in diagnosing problems
- less code will be required compared to ADR 0007
