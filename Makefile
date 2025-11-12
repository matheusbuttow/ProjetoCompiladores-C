CC := gcc
CFLAGS := -Wall -Wextra -pedantic -std=c11
TARGET := main
SRCS := main.c soma.c subtrai.c multiplica.c divisao.c modulo.c potencia.c
OBJS := $(SRCS:.c=.o)

.PHONY: all clean run
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $@

subtrai.o: subtrai.c subtrai.h
soma.o: soma.c soma.h
multiplica.o: multiplica.c multiplica.h
divisao.o: divisao.c divisao.h
modulo.o: modulo.c modulo.h
potencia.o: potencia.c potencia.h

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
