#!/bin/bash
LOG=$HOME/meu-projeto-devops/healthcheck.log
$HOME/meu-projeto-devops/scripts/healthcheck.sh "$1" >> "$LOG"
tail -12 "$LOG"
