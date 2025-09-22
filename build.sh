#!/usr/bin/env bash

echo "🛠️ Compilando TypeScript..."
npx tsc

if [ $? -eq 0 ]; then
  echo "✅ Compilación exitosa. Archivos generados en ./dist"
else
  echo "❌ Error en la compilación"
  exit
fi
