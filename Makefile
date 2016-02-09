


KNIT_CMD=Rscript -e "library(rmarkdown); render('index.Rmd')"

site: index.Rmd week-01/index.html week-02/index.html week-03/index.html week-03/index.html week-04/index.html week-05/index.html week-06/index.html
	$(KNIT_CMD)

week-01/index.html: week-01/index.Rmd
	cd week-01;$(KNIT_CMD)

week-02/index.html: week-02/index.Rmd
	cd week-02/;$(KNIT_CMD)

week-03/index.html: week-03/index.Rmd
	cd week-03/;$(KNIT_CMD)

week-04/index.html: week-04/index.Rmd
	cd week-04/;$(KNIT_CMD)

week-05/index.html: week-05/index.Rmd
	cd week-05/;$(KNIT_CMD)

week-06/index.html: week-06/index.Rmd
	cd week-06/;$(KNIT_CMD)


clean:
	rm *.md *.html
	cd week-01; rm *.md *.html
	cd week-02; rm *.md *.html
	cd week-03; rm *.md *.html
	cd week-04; rm *.md *.html
	cd week-05; rm *.md *.html
	cd week-06; rm *.md *.html
