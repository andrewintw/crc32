
prog = crc32
objs = $(prog).o

all: clean $(prog)

$(prog): $(objs)
	@$(CC) -o $@ $(objs) $(LDFLAGS)

%.o: %.c
	@$(CC) -c $(CFLAGS) $< -o $@

clean:
	@rm -rf *.o $(prog)
