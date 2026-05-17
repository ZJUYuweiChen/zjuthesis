# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

zjuthesis is a LaTeX template for Zhejiang University graduation thesis (undergraduate, master, and PhD). It supports Chinese and English templates, multiple majors (CS, EE, Math, Physics, etc.), and various document types (thesis, design, proposal, final).

**Associated Source Code Project**

This thesis documents the **Nudge** project (code repository directory: `~/project/AI4ADHD`) — an AI agent-based solution for procrastination management. The project's source code is located at:

**Project Naming Convention in Thesis**

In the thesis body (`body/undergraduate/final/` files), the project must be referred to as **"本项目"** (this project) or **"Nudge"** (the official product name). **Never** use "AI4ADHD" or any other name when describing the project itself. AI4ADHD is only the temporary codename and source repository directory name; it must not appear in the thesis text.

**Body Text Emphasis (Thesis Text)**

In the thesis body files (`body/undergraduate/`, `body/graduate/`, `body/graduate-eng/`), **never** use `\textbf`, `\emph`, `\textit`, `\underline`, `\textsl`, `\textsc`, or similar emphasis commands within body paragraphs (正文). Chinese academic style conveys emphasis through word ordering, sentence structure, and logical connectors rather than typographic markup. Emphasis commands remain acceptable inside section headings, table cells, figure captions, code listings, and bibliography entries where they serve a structural rather than rhetorical purpose.

```
~/project/AI4ADHD
```

**Whenever discussing specific system design, implementation details, architecture decisions, API specifications, or technical features in the thesis, you MUST reference the source code in `~/project/AI4ADHD` to ensure accuracy.** Do not infer or guess implementation details from the thesis text alone; always verify against the actual codebase. Key subdirectories:
- `~/project/AI4ADHD/backend/` — Spring Boot backend source (core business logic, AI agent implementation, domain models)
- `~/project/AI4ADHD/frontend/` — Frontend application source
- `~/project/AI4ADHD/docker/` — Docker deployment configurations
- `~/project/AI4ADHD/postgresql/` — Database schemas and migrations

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

## Build Output Directory Rule

**ALL compile artifacts MUST be output to the `out/` directory ONLY.** Never generate `.pdf`, `.aux`, `.log`, `.toc`, `.bcf`, `.bbl`, or any other LaTeX intermediate files in the repository root.

- `.latexmkrc` already sets `$out_dir="out"` — always pass `-outdir=out` to any manual `latexmk` or `latexmk -C` invocations.
- When running `latexmk -C` to clean, use `latexmk -C -outdir=out` to ensure only the `out/` directory is cleaned.
- If compile artifacts ever appear in the root directory (e.g., `zjuthesis.pdf`, `zjuthesis.aux`), delete them immediately to keep the repo clean.

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
- `TrueBlankPage`: `true` or `false` (removes headers/footers/page numbers on blank pages)
- `TwoSide`: `true` or `false`
- `ListOfContents`/`ListOfFigures`/`ListOfTables`/`ListOfAlgorithms`: `true` or `false`

## Architecture

**File Organization:**
- `zjuthesis.cls` - Main document class, defines options and loads configs
- `zjuthesis.tex` - Entry point with document configuration
- `body/` - Thesis content (user-editable)
  - `undergraduate/`, `graduate/`, `graduate-eng/` - Content by degree
  - `ref.bib` - Bibliography file
- `page/` - Cover pages, abstracts, evaluation forms
  - Hierarchical lookup: `major/{format}/` -> parent directories
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

Both use hierarchical file lookup (major-specific -> general).

## Undergraduate Structure

### Final Period (`Period = final`)

The final thesis document consists of two parts concatenated together:

**Final Part:**
1. Cover page (`\inputpage{final}{cover}`)
2. Previous pages (`\inputpage{final}{previous}`) - includes abstract, promise
3. Table of contents (`\inputpage{final}{toc}`)
4. Cover-part page (`\inputpage{final}{cover-part}`)
5. **Body content** (`\inputbody{final/content}`):
   - `1-introduction.tex` - Chapter 1: Introduction
   - `2-background.tex` - Chapter 2: Background/Related Work
   - `3-implementation.tex` - Chapter 3: Implementation
   - `4-documentation.tex` - Chapter 4: Documentation/Testing
   - `5-conclusion.tex` - Chapter 5: Conclusion
6. **Post content** (`\inputbody{final/post}`):
   - Bibliography (`\printbibliography`)
   - Appendix (`\inputbody{final/appendix}`)
   - CV (`\inputbody{final/cv}`, hidden in blind review)
7. Post pages (`\inputpage{final}{post}`) - evaluation forms

**Proposal Part (appended after final part):**
1. Cover-part page (`\inputpage{proposal}{cover-part}`)
2. Cover page (`\inputpage{proposal}{cover}`)
3. Previous pages (`\inputpage{proposal}{previous}`)
4. **Body content** (`\inputbody{proposal/content}`):
   - For `thesis`: review, proposal, translation, original
   - For `design`: proposal, translation, original, midcheck, disclosure
5. Post pages (`\inputpage{proposal}{post}`)

Note: Final and proposal parts use separate reference sections (`\newrefsection`).

### Proposal Period (`Period = proposal`)

Standalone proposal document:
1. Cover page (`\inputpage{proposal}{cover}`)
2. Previous pages (`\inputpage{proposal}{previous}`)
3. Table of contents (`\inputpage{proposal}{toc}`)
4. **Body content** (`\inputbody{proposal/content}`)
5. Post pages (`\inputpage{proposal}{post}`)

### Paper Period (`Period = paper`)

Paper-only variant of final (no proposal appendix):
1. Cover page (`\inputpage{final}{cover}`)
2. Previous pages (`\inputpage{final}{previous}`)
3. Table of contents (`\inputpage{final}{toc}`)
4. Cover-part page (`\inputpage{final}{cover-part}`)
5. **Body content** (`\inputbody{final/content}`, `\inputbody{final/post}`)
6. Post pages (`\inputpage{final}{post}`)

## Graduate Structure

Simpler structure for master/doctor:
1. Cover page (`\inputpage{cover}`)
2. Previous pages (`\inputpage{previous}`, `\inputpage{toc}`)
3. **Body content** (`\inputbody{content}`)
4. **Post content** (`\inputbody{post}`)

## Body File Conventions

**Undergraduate final body files:**
- `body/undergraduate/final/1-introduction.tex` - Chapter 1
- `body/undergraduate/final/2-background.tex` - Chapter 2
- `body/undergraduate/final/3-implementation.tex` - Chapter 3
- `body/undergraduate/final/4-documentation.tex` - Chapter 4
- `body/undergraduate/final/5-conclusion.tex` - Chapter 5
- `body/undergraduate/final/abstract.tex` - Abstract (Chinese + English)
- `body/undergraduate/final/acknowledgement.tex` - Acknowledgements
- `body/undergraduate/final/appendix.tex` - Appendices
- `body/undergraduate/final/cv.tex` - Personal CV/resume
- `body/undergraduate/final/content.tex` - Aggregates all chapter files
- `body/undergraduate/final/post.tex` - Bibliography + appendix + CV

**Proposal body files:**
- `body/undergraduate/proposal/review/review.tex` - Literature review
- `body/undergraduate/proposal/proposal/proposal.tex` - Research proposal
- `body/undergraduate/proposal/translation/translation.tex` - Translation
- `body/undergraduate/proposal/original/original.tex` - Original text
- `body/undergraduate/proposal/midcheck/midcheck.tex` - Mid-check (design only)
- `body/undergraduate/proposal/disclosure/disclosure.tex` - Disclosure (design only)

## Page File Conventions

**Undergraduate final pages:**
- `page/undergraduate/final/cover.tex` - Cover page
- `page/undergraduate/final/cover-part.tex` - Part divider page
- `page/undergraduate/final/previous.tex` - Previous pages (abstract, promise)
- `page/undergraduate/final/toc.tex` - Table of contents
- `page/undergraduate/final/post.tex` - Post pages (evaluation)
- `page/undergraduate/final/eval.tex` - Evaluation form
- `page/undergraduate/final/job.tex` - Job evaluation form
- `page/undergraduate/final/promise.tex` - Integrity promise

**Undergraduate proposal pages:**
- `page/undergraduate/proposal/cover.tex` - Cover page
- `page/undergraduate/proposal/cover-part.tex` - Part divider
- `page/undergraduate/proposal/previous.tex` - Previous pages
- `page/undergraduate/proposal/toc.tex` - Table of contents
- `page/undergraduate/proposal/post.tex` - Post pages

**Graduate pages:**
- `page/graduate/cover.tex` - Cover page
- `page/graduate/previous.tex` - Previous pages
- `page/graduate/toc.tex` - Table of contents
- `page/graduate/abstract.tex` - Abstract
- `page/graduate/acknowledgement.tex` - Acknowledgements
- `page/graduate/auth-claim.tex` - Authorship claim
- `page/graduate/correction.tex` - Correction notice
- `page/graduate/preface.tex` - Preface
- `page/graduate/term-translation.tex` - Term translation table

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

**Multi-line major/department names:**
Uncomment `\majortwolines{}{}` or `\departmenttwolines{}{}` in `zjuthesis.tex`.

## Dev Container

The project includes `.devcontainer/` configuration for VS Code with TeX Live and LaTeX Workshop extension pre-configured.

## CI/CD

GitHub Actions in `.github/workflows/`:
- `build_test.yml` - Builds all template variants in Docker (`adnrv/texlive:full`)
- `pr_test.yml` - PR validation
- `release_code.yml` - Release packaging

Build scripts are in `script/ci/github-action/`.
