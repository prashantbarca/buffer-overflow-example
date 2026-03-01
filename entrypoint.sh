#!/bin/bash

echo "=========================================="
echo "  Buffer Overflow Teaching Lab (32-bit)"
echo "=========================================="
echo

echo
# echo "User: $(whoami)"
echo
echo "To build vulnerable binary:"
echo "   make"
echo
echo "To run normally:"
echo "   ./vuln"
echo
echo "To open in gdb:"
echo "   gdb ./vuln"
echo
echo "Goal: Overwrite return address to call win()"
echo

exec "$@"