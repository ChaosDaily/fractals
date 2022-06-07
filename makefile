SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
EXE = $(SRC:.c=)
LIBS = -lm -lpthread

all: $(EXE)

$(EXE): $(SRC)
	$(CC) $(@:=.c) $(LIBS) -o $@

clean:
	rm -rf $(EXE) *.ppm

.PHONY: clean
