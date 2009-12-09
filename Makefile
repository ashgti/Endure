PERL6=perl6
PERL6LIB='/Users/john/.perl6/lib'

SOURCES=lib/Endure.pm

PIRS=$(SOURCES:.pm=.pir)

all: $(PIRS)

%.pir: %.pm
	env PERL6LIB=$(PERL6LIB) $(PERL6) --target=pir --output=$@ $<

clean:
	rm -f $(PIRS)

test: all
	env PERL6LIB=$(PERL6LIB) prove -e '$(PERL6)' -r --nocolor t/
