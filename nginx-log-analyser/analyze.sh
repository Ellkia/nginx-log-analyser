#!/bin/bash

LOG_FILE="nginx-access.log"

# Vérifier que le fichier existe
if [ ! -f "$LOG_FILE" ]; then
    echo "Erreur : le fichier $LOG_FILE n'existe pas."
    exit 1
fi

echo "========================================"
echo "Top 5 IP addresses with the most requests"
echo "========================================"

awk '{print $1}' "$LOG_FILE" \
| sort \
| uniq -c \
| sort -nr \
| head -5

echo
echo "========================================"
echo "Top 5 most requested paths"
echo "========================================"

awk '{print $7}' "$LOG_FILE" \
| sort \
| uniq -c \
| sort -nr \
| head -5

echo
echo "========================================"
echo "Top 5 response status codes"
echo "========================================"

awk '{print $9}' "$LOG_FILE" \
| sort \
| uniq -c \
| sort -nr \
| head -5

echo
echo "========================================"
echo "Top 5 User Agents"
echo "========================================"

awk -F'"' '{print $6}' "$LOG_FILE" \
| sort \
| uniq -c \
| sort -nr \
| head -5