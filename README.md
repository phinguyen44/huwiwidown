# huwiwidown <img src="Hu_Logo_small.png" align="right" width="128px"/>

This project provides a handy template for writing a dissertation or Bachelor's/
Master's Thesis at the Humboldt-Universit\"at zu Berlin School of Business and
Economics and rendering those files in a PDF format following the Humboldt LaTeX
template found [here](https://www.wiwi.hu-berlin.de/de/professuren/vwl/oe/teaching/theses/latex-thesis-template/view).

Users write in `R Markdown` (which is basically a flavor of the `Markdown`
markup language but with the ability to incorporate R code chunks), and the
`bookdown` package is used to convert the code into LaTeX code and finally into
a PDF document. There's other formats that can be created too, such as html
documents, but that is outside the scope of this package.

In the event that you've never used `bookdown` before, check out this [handy
tutorial](https://bookdown.org/yihui/bookdown/).

## Introduction

Why use this instead of the provided LaTeX template?

Note that LaTeX still provides the high-level "backbone" and document structure,
but RMarkdown ...

designed to be incredibly no-frills, lightweight, so that one can focus primarily
on writing good content rather than on formatting

R Code

eliminates a lot of the manual formatting required to make a LaTeX table, same
with labels and references

## Usage

### Initial Setup

install with `devtools`

### Using the Template

Render with: 
- `bookdown::render_book('index.Rmd', huwiwidown::thesis_pdf(latex_engine = 'lualatex'))`


## Additional Details

What's the layout of the files and what do you need to change?

- `_bookdown.yml`: can override defaults in `rmd_files` to define list of
  elements and order
- `index.Rmd`
- `00-abstract.Rmd`
- `01-intro.Rmd`


## Further Resources

1. Chester Ismay's `thesisdown` package: [thesisdown](https://github.com/ismayc/thesisdown)
2. Details from the HU WiWi: [thesis resources](https://www.wiwi.hu-berlin.de/de/professuren/vwl/oe/teaching/theses)
3. Basic R Markdown syntax: [R Markdown](https://rmarkdown.rstudio.com/authoring_basics.html)

## TO DO:

1. Same thing for the presentation?