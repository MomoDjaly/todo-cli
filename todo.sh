#!/bin/bash

# Fichier qui stocke la liste des taches
FILE="$HOME/todo.txt"

# Création du fichier s'il n'existe pas
touch "$FILE"

# Menu principal : choix en fonction du premier argument
case $1 in
    add)
        # Ajouter une tache
        echo "$2" >> "$FILE"
        echo "Tâche ajoutée : $2"
        ;;
    list)
        # Lister toutes les tâches numérotées
        cat -n "$FILE"
        ;;
    clear)
        # Effacer toutes les tâches
        > "$FILE"
        echo "Toutes les tâches ont été supprimées"
        ;;
    del)
        # Supprimer une tâche par son numéro
        sed -i "${2}d" "$FILE"
        echo "Tâche $2 supprimée."
        ;;
    *)
        # Message d'aide
        echo "Usage: $0 {add 'tâche'|list|clear|del NUM}"
        ;;
esac
