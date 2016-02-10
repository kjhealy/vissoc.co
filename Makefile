SSH_USER = kjhealy@kjhealy.co
DOCUMENT_ROOT = ~/public/vissoc.co/public_html
PUBLIC_DIR = public/



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

public: site
	rm -rf public/
	mkdir public/
	cp index.html public/
	cp -r week-01 public/
	cp -r week-02 public/
	cp -r week-03 public/
	cp -r week-04 public/
	cp -r week-05 public/
	cp -r week-06 public/
	cp -r assets public/
	find public -type d -print0 | xargs -0 chmod 755
	find public -type f -print0 | xargs -0 chmod 644

deploy: public
	rsync -crzve 'ssh -p 22' $(PUBLIC_DIR) $(SSH_USER):$(DOCUMENT_ROOT)
