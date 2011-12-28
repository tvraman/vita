WEB=/home/raman/public_html/sf-www-emacspeak/raman/
all: resume.pdf resume.html
resume.pdf: resume.tex resume-style.tex tvr-macros.tex
	pdflatex resume

resume.html: resume.tex 
	htlatex resume resume


dist: resume.pdf resume.html resume.css
	tar cfz res.tgz resume.html resume.pdf resume.css


clean:
	rm -f resume.ps resume.pdf resume.dvi resume.html \
	resume.css resume.tmp resume.xref resume.4* resume.lg \
	resume.aux resume.idv resume.log resume.out
pub: resume.pdf resume.html resume.css
	cp resume.css resume.pdf resume.html ${WEB}
	(cd ${WEB} ;make publish)

