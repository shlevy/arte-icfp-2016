
build/thesis.pdf: paper.org preamble.tex paperTemplate.latex
	pandoc -o paper.pdf --template=paperTemplate.latex --latex-engine=xelatex -H preamble.tex --bibliography background.bib --bibliography template.bib --bibliography theta.bib --bibliography sleep.bib --csl=plos.csl -V geoometry:margin=1.25in paper.org

build/index.html: defense.md revealTemplate.html slides.css
	pandoc -t revealjs defense.md -s --slide-level 1 --template revealTemplate.html -o build/index.html



