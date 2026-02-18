#!/bin/bash

echo "=========================================="
echo "  Buffer Overflow Teaching Lab (32-bit)"
echo "=========================================="
echo

# Disable ASLR (requires sudo)
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space > /dev/null

echo "ASLR disabled for reproducibility."
echo
echo "User: $(whoami)"
echo
echo "To build vulnerable binary:"
echo "   make"
echo
echo "To run normally:"
echo "   ./vuln AAAA"
echo
echo "To open in gdb:"
echo "   gdb ./vuln"
echo
echo "Goal: Overwrite return address to call win()"
echo

exec "$@"