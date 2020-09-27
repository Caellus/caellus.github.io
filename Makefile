INPUT = $(wildcard _pages/*.md)
OUTPUT := $(patsubst _pages/%.md,_output/%.html, $(INPUT))

all: $(OUTPUT)

_output/%.html: _pages/%.md templates/header.html
	touch $@
	@cat templates/header.html > $@
	@./render.sh $< >> $@

.PHONY: clean
clean:
	rm _output/*.html
