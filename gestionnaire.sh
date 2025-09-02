#!/bin/bash

# Fichier qui stocke les données
FILE="$HOME/gestionnaire.txt"

# Crée le fichier s'il n'existe pas
touch "$FILE"

# Menu principal

case $1 in
    add)
        # Ajouter une entrée (note ou contact)
        echo "$2" >> "$FILE"
        echo "Entrée ajoutée :$2"
        ;;
    list)
        # Lister toutes les entrées
        cat -n "$FILE"
        ;;
    search)
        # Rechercher une entrée (par mot-clé)
        grep -n "$2" "$FILE"
        ;;
    clear)
        # Vider le fichier
        > "$FILE"
        echo "Toutes les entrée ont été supprimées"
        ;;
    *)
        # Message d'aide
        echo "Usage: $0 {add'entrée'|list|search MOT|clear}"
        ;;
esac
