# SRS Template

Software Requirements Specification template for LaTeX.

Document structure based on
[jam01's Markdown template](https://github.com/jam01/SRS-Template) which is
based on IEEE 830 and ISO/IEC/IEEE 29148 specifications.

## Usage

To create a copy of this template use the _Use template_ button on GitHub, clone
the repo or fork it.

### Editing

Try to modify the following section of the document:

```tex
\title{Project Name}
\author{Author Name}
\date{\today}
\version{1.0}
```

Then compile and see the result.

### Compiling

The project has been tested using _pdflatex_.

The document can be compiled using the `make` command, since this project
includes a Makefile providing the following commands:

- (default): Compile the tex files as a PDF.
- clean: Remove all the auxiliary files.

Example:

```sh
# Compile the document
make

# Then clean the direcory
make clean
```

## Project Structure

### srs.tex

The main LaTeX file. Includes external packages and document metadata, such as
the project title, author and date.

### srsdocument.cls

Overrides the default styles for a LaTeX document and defines commands to
help in the creation of the document.

### assets/**

Includes external files to include in the document such as images.

### chapters/**

The tex files in here include all of the final document content:

- Introduction
- Product Overview
- Requirements
- Verification

### prelims/**

Includes tex files to show before the document main content (e.g., the revision
history).

### appendixes/**

Includes tex files to be shown at the end of the document. These are external
resources that need to be included in the document, but are not part of the main
document structure.
