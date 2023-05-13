
test:
	rm mycv/*.aux -f
	rm mycv/*.log -f
	rm mycv/*.out -f
	rm mycv/*.aux -f
	cd mycv/ ; for f in *.tex; do xelatex $$f; done
	#cp mycv/resume.pdf resume_sylvain_leroy.pdf
#	cp mycv/coverletter.pdf coverletter_sylvain_leroy.pdf
	cp mycv/cv.pdf cv_sylvain_leroy.pdf
	cp mycv/cvfr.pdf cv_fr_sylvain_leroy.pdf
	#cp mycv/cv-cto.pdf cv_cto_sylvain_leroy.pdf
	#cp mycv/cvsqm.pdf cv_fr_sylvain_leroy_software_quality_manager.pdf
	#cp mycv/cvsqm2.pdf cv_fr_sylvain_leroy_software_quality_manager2.pdf
	#rm mycv/*.pdf
