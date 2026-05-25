#!/bin/bash
set -e

mkdir -p dist
cp index.html dist/index.html

# Injeta as variáveis de ambiente do Cloudflare no HTML
sed -i "s|__FIREBASE_API_KEY__|$FIREBASE_API_KEY|g"                     dist/index.html
sed -i "s|__FIREBASE_AUTH_DOMAIN__|$FIREBASE_AUTH_DOMAIN|g"             dist/index.html
sed -i "s|__FIREBASE_PROJECT_ID__|$FIREBASE_PROJECT_ID|g"               dist/index.html
sed -i "s|__FIREBASE_STORAGE_BUCKET__|$FIREBASE_STORAGE_BUCKET|g"       dist/index.html
sed -i "s|__FIREBASE_MESSAGING_SENDER_ID__|$FIREBASE_MESSAGING_SENDER_ID|g" dist/index.html
sed -i "s|__FIREBASE_APP_ID__|$FIREBASE_APP_ID|g"                       dist/index.html

echo "Build concluído — chaves injetadas com sucesso."
