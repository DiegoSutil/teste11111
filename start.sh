#!/bin/bash

# Script de Inicialização - SANSEI DECANTS
# Autor: Manus AI Assistant
# Data: 26/11/2025

echo "================================================"
echo "  SANSEI DECANTS - Servidor de Desenvolvimento"
echo "================================================"
echo ""

# Verifica se http-server está instalado
if ! command -v http-server &> /dev/null
then
    echo "⚠️  http-server não encontrado!"
    echo "📦 Instalando http-server..."
    npm install -g http-server
    
    if [ $? -eq 0 ]; then
        echo "✅ http-server instalado com sucesso!"
    else
        echo "❌ Erro ao instalar http-server"
        echo "💡 Tente instalar manualmente: npm install -g http-server"
        exit 1
    fi
fi

echo ""
echo "🚀 Iniciando servidor de desenvolvimento..."
echo "📂 Diretório: $(pwd)"
echo "🌐 Porta: 3000"
echo "🔓 CORS: Habilitado"
echo ""
echo "================================================"
echo "  Acesse o site em: http://localhost:3000"
echo "================================================"
echo ""
echo "💡 Pressione Ctrl+C para parar o servidor"
echo ""

# Inicia o servidor
http-server -p 3000 --cors
