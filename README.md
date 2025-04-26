# APS Journal LaTeX Paper Template

This repository provides a LaTeX template tailored for submissions to American Physical Society (APS) journals. It includes templates for the main manuscript, cover letter, and responses to referee reports, along with a GitHub Actions workflow for automated PDF compilation.

## Features

- Manuscript template using the revtex class (APS style)
- Cover letter template using the moderncv class
- Referee response template
- Automated PDF compilation via GitHub Actions
- example figures generated using tikz/pgfplots

## Directory Structure

- `manuscript/`: Contains the main manuscript (main.tex) following APS formatting.
- `coverletter/`: Contains the cover letter (main.tex) using the moderncv class.
- `referee_report/`: Contains the response to referee comments (main.tex).
- `others/`: Contains additional resources or examples.
- `.github/workflows/`: Contains the GitHub Actions workflow YAML file for automated builds. ￼

## Dependencies

Ensure the following LaTeX packages are installed:

- revtex: For APS manuscript formatting (can be changed for your preference).
- moderncv: For the cover letter formatting.
- standalone: For compiling figures and tables separately.
- Bibtex: For bibliography management.


## Usage

1.	Clone the repository:

	```bash
	git clone https://github.com/ToAmano/paper_template.git
	cd paper_template
	```

2.	Navigate to the desired directory (manuscript/, coverletter/, or referee_report/) and edit the main.tex file as needed.

3.	Compile the LaTeX files using latexmk:

	```bash
	latexmk -pdf main.tex
	```

	This will generate the corresponding PDF file.

## GitHub Actions Workflow

The repository includes a GitHub Actions workflow that automatically compiles the LaTeX documents upon pushing changes.
- The workflow is defined in .github/workflows/.
- It triggers on push tag events and compiles the LaTeX files to PDFs.
- It also generate the diff file comparing the latest and the previous tags.

## TODO

- Include examples for tikz and pgfplots for advanced graphics.
- Include examples for asymptote for vector graphics.

