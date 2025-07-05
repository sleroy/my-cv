
default: improved

improved:
	rm mycv/*.aux -f
	rm mycv/*.log -f
	rm mycv/*.out -f
	cd mycv/ ; xelatex cv_improved.tex
	cp mycv/cv_improved.pdf cv_sylvain_leroy.pdf

# Legacy build (kept for reference)
legacy:
	rm mycv/*.aux -f
	rm mycv/*.log -f
	rm mycv/*.out -f
	cd mycv/ ; for f in *.tex; do xelatex $$f; done
	cp mycv/cv.pdf cv_legacy_sylvain_leroy.pdf

clean:
	rm mycv/*.aux -f
	rm mycv/*.log -f
	rm mycv/*.out -f
	rm mycv/*.pdf -f
