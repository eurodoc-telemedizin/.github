#!/bin/bash
# Apply Node.js compatibility fix to medlibre-ragflow
# Usage: ./apply-fix.sh /path/to/medlibre-ragflow

set -e

RAGFLOW_DIR="${1:-.}"

if [ ! -f "$RAGFLOW_DIR/web/package.json" ]; then
    echo "Error: Could not find web/package.json in $RAGFLOW_DIR"
    echo "Usage: $0 /path/to/medlibre-ragflow"
    exit 1
fi

echo "Applying Node.js compatibility fix to $RAGFLOW_DIR..."

# Create .nvmrc files
echo "18.20.4" > "$RAGFLOW_DIR/.nvmrc"
echo "18.20.4" > "$RAGFLOW_DIR/web/.nvmrc"
echo "Created .nvmrc files"

# Update package.json
cd "$RAGFLOW_DIR/web"

# Backup original
cp package.json package.json.bak

# Update umi version
sed -i.tmp 's/"umi": "\^4\.0\.90"/"umi": "^4.5.3"/g' package.json
sed -i.tmp 's/"@umijs\/lint": "\^4\.1\.1"/"@umijs\/lint": "^4.4.0"/g' package.json
sed -i.tmp 's/"@umijs\/plugins": "\^4\.1\.0"/"@umijs\/plugins": "^4.4.0"/g' package.json
sed -i.tmp 's/"node": ">=18\.20\.4"/"node": ">=18.20.4 <20"/g' package.json

# Clean up temp files
rm -f package.json.tmp

echo "Updated package.json"

# Check if we should reinstall
read -p "Do you want to clean and reinstall node_modules? (y/N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Cleaning node_modules..."
    rm -rf node_modules package-lock.json
    npm cache clean --force
    echo "Installing dependencies..."
    npm install
    echo "Done! Try running: npm run build"
else
    echo "Remember to run 'npm install' after switching to Node.js 18.x"
fi

echo ""
echo "Important: Use Node.js 18.x LTS (Node.js 20+ is not supported)"
echo "If using nvm: nvm use 18 or nvm install 18.20.4"
