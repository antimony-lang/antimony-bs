SRC := $(shell find src -name "*.sb")
OUT := main.js

SB ?= sb
RM ?= rm -f

all: $(OUT)

$(OUT): $(SRC)
	$(SB) build src/main.sb -o $(OUT)

run: $(OUT)
	node $(OUT)

clean:
	-$(RM) *.js $(OUT)

.PHONY: all clean