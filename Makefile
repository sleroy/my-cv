
test:
	cd mycv/ ; for f in *.tex; do xelatex $$f; done
	cp mycv/resume.pdf resume_sylvain_leroy.pdf
	cp mycv/coverletter.pdf coverletter_sylvain_leroy.pdf
	cp mycv/cv.pdf cv_sylvain_leroy.pdf
	cp mycv/cvfr.pdf cv_fr_sylvain_leroy.pdf
	rm mycv/*.pdf
