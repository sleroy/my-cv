
default: final

# PlushCV Template - Final Version (Enhanced TOCEA description)
final:
	rm mycv/*.aux -f
	rm mycv/*.log -f
	rm mycv/*.out -f
	cd mycv/ ; xelatex cv_plushcv_final.tex
	cp mycv/cv_plushcv_final.pdf cv_sylvain_leroy.pdf

# PlushCV Template (Modern two-column layout - Fixed spacing)
plushcv:
	rm mycv/*.aux -f
	rm mycv/*.log -f
	rm mycv/*.out -f
	cd mycv/ ; xelatex cv_plushcv_fixed.tex
	cp mycv/cv_plushcv_fixed.pdf cv_sylvain_leroy_plushcv.pdf

# Awesome CV Template (Compact one-page)
improved:
	rm mycv/*.aux -f
	rm mycv/*.log -f
	rm mycv/*.out -f
	cd mycv/ ; xelatex cv_improved.tex
	cp mycv/cv_improved.pdf cv_sylvain_leroy_awesome.pdf

# Build all templates
all: final plushcv improved

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
