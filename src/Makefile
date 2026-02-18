CC=gcc
CFLAGS=-m32 -g -fno-stack-protector -z execstack -no-pie

all: vuln

vuln:
	$(CC) $(CFLAGS) vuln.c -o vuln

clean:
	rm -f vuln
