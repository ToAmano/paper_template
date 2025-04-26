
# LaTeX Paper Template

A hierarchically organized LaTeX template for academic paper writing. This template is designed with a split-file structure for development and can be flattened for final submission.

## Features

- **Organized Hierarchical Structure**: Separate directories for documents, figures, references, etc.
- **Modular Design**: Main text sections, figures, tables, and citations managed as individual files
- **Submission Preparation**: Tools to flatten the hierarchical structure into a single directory for submission
- **Reusable Figures and Tables**: Individual management of figures and tables using the standalone package

## Directory Structure

```
.
├── README.md
├── docs/                  # Document section files
│   ├── abst.tex           # Abstract
│   ├── acknowledgment.tex # Acknowledgments
│   ├── appendix.tex       # Appendix
│   ├── conclusion.tex     # Conclusion
│   ├── intro.tex          # Introduction
│   ├── path_setting.tex   # Path settings
│   ├── preamble.tex       # Preamble settings
│   ├── result.tex         # Results
│   ├── theory.tex         # Theory
│   └── title_and_author.tex # Title and author information
├── figures/               # Figure and table files
│   ├── fig01/             # Directory for figure 1
│   │   ├── fig01.pdf      # PDF of figure 1
│   │   └── fig01.tex      # Source of figure 1
│   ├── fig02/
│   │   ├── fig02.pdf
│   │   └── fig02.tex
│   ├── fig03/
│   │   ├── fig03.pdf
│   │   └── fig03.tex
│   ├── table01/           # Directory for table 1
│   │   └── table01.tex    # Source of table 1
│   ├── table02/
│   │   └── table02.tex
├── include/               # Float environment files
│   ├── fig01_include.tex  # Float environment for figure 1
│   ├── fig02_include.tex
│   ├── fig03_include.tex
│   ├── table01_include.tex # Float environment for table 1
│   └── table02_include.tex
├── main.tex               # Main file
├── references/            # References
│   └── ref.bib            # BibTeX file
└── submit/                # Directory for flattened submission files
    └── README.md
```

## Usage

### Setup

1. Clone or download this repository
   ```bash
   git clone https://github.com/ToAmano/paper_template.git
   cd paper_template
   ```

2. Edit the files according to your paper's content

### Paper Writing Workflow

1. Edit `main.tex` as the main file
2. Write each section in the corresponding file under `docs/`
3. Place figures and tables in the `figures/` directory, compile them individually using the `standalone` package if needed
4. Define float environments in files under `include/`
5. Add references to `references/ref.bib`

### Compilation

Basic compilation:
```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Preparing Files for Submission

To generate a flattened file structure from the hierarchical one for submission:

1. Using `latexpand`:
   ```bash
   latexpand main.tex > submit/submit.tex
   ```

2. Using `texdirflatten`:
   ```bash
   texdirflatten -1 -f main.tex -o submit
   ```

3. Using `flatex`:
   ```bash
   pip install flatex
   flatex main.tex submit/submit.tex
   ```

**Note**: These tools have slightly different functionalities. Particularly, check how they handle figure and table files.

## Path Settings

To simplify loading figure and table files, add path settings to the preamble:

```latex
\graphicspath{{figures/fig01/}
              {figures/fig02/}
              {figures/fig03/}}  % Paths for includegraphics

\makeatletter
\providecommand*{\input@path}{}
\g@addto@macro\input@path{{figures/table01/}
                          {figures/table02/}}  % Paths for input
\makeatother
```

This allows you to abbreviate paths in your document:
```latex
\includegraphics{fig01.pdf}  % Instead of: \includegraphics{figures/fig01/fig01.pdf}
\input{table01.tex}          % Instead of: \input{figures/table01/table01.tex}
```

## Naming Conventions

- Prefix figure and table names with sequential numbers: `fig01_`, `table01_`
- For multiple subfigures in a single figure: `fig01a_`, `fig01b_`
- Float environment files follow the same convention: `fig01_include.tex`

## Important Notes

- Avoid duplicate filenames (they may be overwritten during flattening)
- Including figure numbers in filenames means you'll need to renumber when adding new figures
- Tables created in standalone environments may require final adjustments

## Future Development

- Expansion of sample repository (additional figure patterns, documents, citations, references)
- Development of improved flattening tools


## References

- [Integrating split TeX files into a single TeX file](https://zenn.dev/ultimatile/articles/b3fbd4ec65373d)
- [Replace \input{fileX} by the content of fileX automatically](https://tex.stackexchange.com/questions/21838/replace-inputfilex-by-the-content-of-filex-automatically)
- [arxiv-latex-cleaner](https://github.com/google-research/arxiv-latex-cleaner)
- [flatex](https://github.com/johnjosephhorton/flatex)
- [flap](https://github.com/fchauvel/flap)


