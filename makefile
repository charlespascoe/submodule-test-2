OUT=test.dll
COMPILE=mcs -out:bin/$(OUT) -target:library -pkg:dotnet -recurse:'src/*.cs'

all:
	mkdir -p bin/
	$(COMPILE)

debug:
	$(COMPILE) -debug
	mono --debug bin/$(OUT)

run: all
	mono bin/$(OUT)
