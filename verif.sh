#!/bin/bash

if [ ! -f "$1" ]; then
  echo "Erreur : fichier $1 introuvable" >&2
  exit 1
fi
echo "Le fichier $1 existe bien"
