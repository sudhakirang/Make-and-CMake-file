# Compiler
CC = gcc

# Compiler Flags
CFLAGS = -Wall -g

# Target Executable
TARGET = myprogram

# Source Files
SRCS = main.c add.c

# Object Files
OBJS = $(SRCS:.c=.o)

# Default Target
all: $(TARGET)

# Linking
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Compilation
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean Target
clean:
	rm -f $(OBJS) $(TARGET)
