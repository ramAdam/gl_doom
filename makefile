CC=gcc
CFLAGS=-I. -lGL -lglut -lGLU -lm
DEPS = 
OBJ = engine.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

engine: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

run: engine
	./engine

.PHONY: clean

clean:
	rm -f *.o *~ core engine