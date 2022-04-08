INPUT = $(wildcard pages/*.md)
OUTPUT := $(patsubst pages/%.md,docs/%.html, $(INPUT))

all: $(OUTPUT)

docs/%.html: pages/%.md templates/header.html
	touch $@
	@cat templates/header.html > $@
	@./render $< >> $@

.PHONY: clean
clean:
	rm docs/*.html
