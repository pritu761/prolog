# Prolog Project

A clean and extensible Prolog repository for logic programming, knowledge representation, and rule-based problem solving.

---

## Overview

This repository contains Prolog source files, examples, and utilities for experimenting with:

- Declarative programming
- Logic inference
- Knowledge bases
- Recursive algorithms
- Constraint solving
- AI/search problems
- Educational exercises

Compatible with:

- SWI-Prolog
- GNU Prolog
- SICStus Prolog (partial support)

---

## Repository Structure

```text
.
├── src/                # Main Prolog source files
├── examples/           # Example programs and queries
├── tests/              # Unit tests
├── docs/               # Documentation
├── data/               # Facts and datasets
├── scripts/            # Utility scripts
└── README.md
```

---

## Requirements

Install one of the following Prolog environments:

- SWI-Prolog (recommended)
- GNU Prolog

### Install SWI-Prolog

#### macOS

```bash
brew install swi-prolog
```

#### Ubuntu / Debian

```bash
sudo apt update
sudo apt install swi-prolog
```

#### Windows

Download from:
https://www.swi-prolog.org

---

## Getting Started

Clone the repository:

```bash
git clone https://github.com/your-username/your-prolog-repo.git
cd your-prolog-repo
```

Start Prolog:

```bash
swipl
```

Load the main source file:

```prolog
?- [src/main].
```

Run a query:

```prolog
?- some_predicate(X).
```

---

## Example

### Facts

```prolog
parent(john, mary).
parent(mary, alice).
```

### Rules

```prolog
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
```

### Query

```prolog
?- grandparent(john, alice).
true.
```

---

## Running Tests

Run tests using SWI-Prolog:

```bash
swipl -s tests/test_main.pl -t run_tests
```

Example test file:

```prolog
:- begin_tests(family).

test(grandparent) :-
    grandparent(john, alice).

:- end_tests(family).
```

---

## Coding Style

Recommended practices:

- Use descriptive predicate names
- Keep predicates pure where possible
- Separate facts, rules, and helper predicates
- Add comments for public predicates
- Prefer tail recursion for large datasets

Example:

```prolog
% factorial(+N, -Result)

factorial(0, 1).

factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Temp),
    Result is N * Temp.
```

---

## Features

- Modular Prolog architecture
- Sample knowledge bases
- Search and inference examples
- Unit testing support
- Beginner-friendly structure
- Easily extensible

---

## Development Workflow

Reload updated files:

```prolog
?- make.
```

Enable tracing/debugging:

```prolog
?- trace.
```

---

## Contributing

Contributions are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit changes
4. Open a pull request

Please ensure:

- Tests pass
- Code is documented
- Examples are included where relevant

---

## Roadmap

- [ ] Constraint Logic Programming examples
- [ ] Graph traversal algorithms
- [ ] Expert systems
- [ ] NLP examples
- [ ] Performance benchmarks

---

## Resources

- https://www.swi-prolog.org/pldoc/
- https://lpn.swi-prolog.org
- https://www.gprolog.org

---

## License

MIT License

```text
MIT License © 2026 Your Name
```
