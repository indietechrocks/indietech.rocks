.PHONY: all clean jekyll open

STAGEDIR=./_site

all: jekyll

clean:
	rm -rf $(STAGEDIR)/*

jekyll:
	jekyll build

open:
	open -a Firefox http://localhost/
