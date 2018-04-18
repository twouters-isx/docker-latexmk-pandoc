# Latex-latexmk-pandoc container

Texlive (full), latexmk and pandoc in one docker:

- Easy setup with docker
- Easy compilation with latexmk
- Easy conversion from latex to docx with pandoc

How to use it?
-----

Compile latex project with latexmk: pdf
```bash
cd my_tex_projectdir
docker run --rm -it -v "$PWD":/build twouters77/latexmkpandoc latexmk -pdf my_tex_project.tex
# clean: docker run --rm -it -v "$PWD":/build twouters77/latexmkpandoc latexmk -C
```

Convert latex project with pandoc: docx
```bash
cd my_tex_projectdir
docker run --rm -it -v "$PWD":/build twouters77/latexmkpandoc pandoc -f latex -t docx -o my_tech_project.docx my_tech_project.tex
```
