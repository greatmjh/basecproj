#compile settings
CC = gcc
CFLAGS = -Wall

#directories
SRC = src
OUT = out
INCLUDE = include

#output
OUTFILENAME = main

#c files
$(OUT)/$(OUTFILENAME): $(wildcard $(SRC)/*)
	$(CC) $(CFLAGS) -I$(INCLUDE) $^ -o $@ 

run: $(OUT)/$(OUTFILENAME)
	$(OUT)/$(OUTFILENAME)