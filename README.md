# huwiwidown <img src="Hu_Logo_small.png" align="right" width="128px"/>

This project provides a handy template for writing a dissertation or Bachelor's/
Master's Thesis at the Humboldt-Universit\"at zu Berlin School of Business and
Economics and rendering those files in a PDF format following the standard LaTeX
template found [here](https://www.wiwi.hu-berlin.de/de/professuren/vwl/oe/teaching/theses/latex-thesis-template/view).

Users write in the `RMarkdown` markup language (as opposed to LaTex) and then
the `bookdown` package in R is used to render the documents in a PDF format. In
the enent that you've never used `bookdown` before, check out the [handy
tutorial](https://bookdown.org/yihui/bookdown/).

## Introduction

Why use this instead of the provided LaTeX template?

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
- `01-intro.Rmd`


## Further Resources

1. Chester Ismay's `thesisdown` package: [thesisdown](https://github.com/ismayc/thesisdown)
2. Details from the HU WiWi: [thesis resources](https://www.wiwi.hu-berlin.de/de/professuren/vwl/oe/teaching/theses)