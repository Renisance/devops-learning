#!/bin/bash

# Определяем исходный и целевой каталоги
SOURCE_DIR="/home/lubuntu/Documents" # Исходный каталог для резервного копирования

BACKUP_DIR="/home/lubuntu/backups" # Целевой каталог для резервных копий

mkdir -p "$BACKUP_DIR"

ls -l "$BACKUP_DIR"

# Создаем метку времени для папки с резервными копиями
TIMESTAMP=$(date +'%Y%m%d%H%M%S')

# Определяем имя файла резервной копии
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Создаем сжатый архив каталога
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

