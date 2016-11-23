.PHONY: all clean re mrproper

PAGEDIR:=m4html
M4HMTMLFILES:=$(wildcard $(PAGEDIR)/*.m4.html)
HTMLFILES:=$(patsubst $(PAGEDIR)/%.m4.html,%.html,$(M4HMTMLFILES))
COMPONENTS:=$(filter-out $(M4HMTMLFILES),$(wildcard $(PAGEDIR)/*.m4 $(PAGEDIR)/*.html))

all: $(HTMLFILES)

%.html: $(PAGEDIR)/%.m4.html $(COMPONENTS)
	cd $(<D) && m4 --gnu --prefix-builtins $(<F) > ../$@

clean:
	rm -f *.html
re: clean all
mrproper: re
