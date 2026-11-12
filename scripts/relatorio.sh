#!/bin/bash
echo "=== Relatotio do sistema ==="
date
uptime
df -h / | grep -v Filesystem
