# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

zjuthesis is a LaTeX template for Zhejiang University graduation thesis (undergraduate, master, and PhD). It supports Chinese and English templates, multiple majors (CS, EE, Math, Physics, etc.), and various document types (thesis, design, proposal, final).

## Build Commands

**Note:** Compilation happens automatically when using VS Code with LaTeX Workshop extension (included in Dev Container). Manual compilation is typically not needed.

**Manual compile (if needed):**
```bash
latexmk
```
Outputs to the `out/` directory.

**Force clean rebuild:**
```bash
latexmk -C && latexmk
```

**Word count (after compiling):**
```bash
./script/utils/word_count.sh
```

## Auto-Compile in Container (427e03e804bb)

When using the dev container `427e03e804bb`, a tmux-based auto-compile watcher can run in the background:

**Start auto-compile (runs in tmux session `latexwatch`):**
```bash
# First install tmux in container if not present
docker exec 427e03e804bb apt-get update -qq && docker exec 427e03e804bb apt-get install -y -qq tmux

# Start the watcher (latexmk -pvc mode)
docker exec 427e03e804bb tmux new-session -d -s latexwatch "cd /workspace && latexmk -pvc -view=none -interaction=nonstopmode -file-line-error -outdir=out 2>&1 | tee out/compile.log"
```

**View logs:**
```bash
# Latest compile output
tail -f out/compile.log

# View tmux pane content
docker exec 427e03e804bb tmux capture-pane -pt latexwatch
```

**Attach to tmux session:**
```bash
docker exec -it 427e03e804bb tmux attach -t latexwatch
# Detach: Ctrl+B, then D
```

**Stop auto-compile:**
```bash
docker exec 427e03e804bb tmux kill-session -t latexwatch
```

## Document Configuration

The main file `zjuthesis.tex` controls document generation via `\documentclass` options:

**Key options:**
- `Degree`: `undergraduate` or `graduate`
- `Type`: `thesis` or `design`
- `Period`: `proposal`, `final`, or `paper` (undergraduate only)
- `MajorFormat`: `general`, `cs`, `ee`, `math`, `physics`, `isee`, `opteng`, `se`
- `BlindReview`: `true` or `false` (hides personal info for review)
- `GradLevel`: `master` or `doctor` (graduate only)
- `Language`: `chinese` or `english` (graduate only)

## Architecture

**File Organization:**
- `zjuthesis.cls` - Main document class, defines options and loads configs
- `zjuthesis.tex` - Entry point with document configuration
- `body/` - Thesis content (user-editable)
  - `undergraduate/`, `graduate/`, `graduate-eng/` - Content by degree
  - `ref.bib` - Bibliography file
- `page/` - Cover pages, abstracts, evaluation forms
  - Hierarchical lookup: `major/{format}/` → parent directories
- `config/` - Formatting and package configuration
  - `format/general/` - Base formatting for all majors
  - `format/major/{name}/` - Major-specific overrides
- `figure/` - Images and figures
- `script/` - CI/build scripts

**Configuration System:**
The format system uses hierarchical overrides defined in `config/format/format.tex`:
1. Load `config/format/general/{file}.tex` if exists
2. Load `config/format/major/{MajorFormat}/{file}.tex` if exists

This allows majors to override general formatting. Files loaded: `reference`, `packages`, `commands`, `caption`, `geometry`, `layout`, `tables`, `heading`, `fonts`, `numbering`, `debugging`, `language`, `code`, `title`.

**Input Commands:**
- Undergrad: `\inputpage{final|proposal}{filename}`, `\inputbody{filename}`
- Graduate: `\inputpage{filename}`, `\inputbody{filename}`

Both use hierarchical file lookup (major-specific → general).

## Common Modifications

**Adding a new major format:**
1. Create `config/format/major/{major}/`
2. Add format files (e.g., `layout.tex`, `fonts.tex`)
3. Set `MajorFormat = {major}` in `zjuthesis.tex`

See `docs/develop.md` for extension guidelines.

**Reference style:**
Configured in `config/packages.tex` using `biblatex` with `gb7714-2015` style. Use `\cite{}` for superscript citations, `\parencite{}` for inline citations.

**Multi-line titles:**
Uncomment commands like `\titletwolines{}{}` or `\titlethreelines{}{}{}` in `zjuthesis.tex` before `\begin{document}`.

## Dev Container

The project includes `.devcontainer/` configuration for VS Code with TeX Live and LaTeX Workshop extension pre-configured.

## CI/CD

GitHub Actions in `.github/workflows/`:
- `build_test.yml` - Builds all template variants in Docker (`adnrv/texlive:full`)
- `pr_test.yml` - PR validation
- `release_code.yml` - Release packaging

Build scripts are in `script/ci/github-action/`.
