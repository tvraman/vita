WEB=/home/tvraman/public_html/personal-web/
all: resume.pdf resume.html
resume.pdf: resume.tex
	latex $<
	latex $<
	dvips -Pwww resume.dvi
	ps2pdf resume.ps


resume.html: resume.tex 
	htlatex resume resume


dist: resume.pdf resume.html
	tar cfz res.tgz resume.html resume.pdf


clean:
	rm -f resume.ps resume.pdf resume.dvi resume.html resume.4* resume.lg
pub: resume.pdf resume.html resume.css
	cp resume.css resume.pdf resume.html ${WEB}
	(cd ${WEB} ;make publish)

