#!/bin/bash

# Définir les dossiers
dossier_source="wezterm"
dossier_destination="$HOME/.config"

# Vérifier que le dossier source "wezterm" existe
if [ ! -d "$dossier_source" ]; then
    echo "Erreur: Le dossier 'wezterm' n'existe pas dans le répertoire courant."
    exit 1
fi

# Vérifier que le dossier destination .config existe
if [ ! -d "$dossier_destination" ]; then
    echo "Erreur: Le dossier de destination '$dossier_destination' n'existe pas."
    exit 1
fi

# Copier le dossier wezterm vers .config
cp -rv "$dossier_source" "$dossier_destination"

echo "Le dossier 'wezterm' a été copié avec succès dans $dossier_destination/"
