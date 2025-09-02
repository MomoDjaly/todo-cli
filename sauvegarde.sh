#!/bin/bash

# Dossier a sauvegarder
SOURCE="/home/momo/Public"

# Dossier de destination pour les sauvegardes
DEST="/home/momo/sauvegardes"

# Crée le dossier de sauvegarde s'il n'existe pas
mkdir -p "$DEST"

# Date et heure pour horodater la sauvegarde
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Nom du fichier de sauvegarde
BACKUP_NAME="backup_$DATE.tar.gz"

# Crée l'archive en prenant uniquement le contenu du dossier (sans chemin absolu)
tar -czf "$DEST/BACKUP_NAME" -C "$SOURCE" .

# Message de confirmation
echo "Sauvegarde créée : $DEST/BACKUP_NAME"
