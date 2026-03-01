CC=gcc
CFLAGS=-m32 -g -fno-stack-protector -no-pie
CFLAGSNOSTACK=-m32 -g -no-pie

all: vuln

vuln:
        $(CC) $(CFLAGS) vuln.c -o vuln
        $(CC) $(CFLAGSNOSTACK) vuln.c -o vuln-stack-protected

clean:
        rm -f vuln vuln-stack-protected