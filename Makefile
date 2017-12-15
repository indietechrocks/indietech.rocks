.PHONY: all clean jekyll open

STAGEDIR=./_site
OPEN=xdg-open
# OPEN=open -a Firefox

all: jekyll

clean:
	rm -rf $(STAGEDIR)/*

jekyll:
	jekyll build

open:
	$(OPEN) http://localhost/
