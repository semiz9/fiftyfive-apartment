#!/bin/bash
set -e

echo "🌿 Deploying Semiz Kaltenleutgeben..."

# Install dependencies
pnpm install

# Build
pnpm build

# Deploy to Cloudflare Pages (requires wrangler login)
echo "Choose deployment target:"
echo "1) Cloudflare Pages (wrangler)"
echo "2) Netlify (netlify-cli)"
echo "3) Vercel (vercel-cli)"
read -p "Enter choice [1-3]: " choice

case $choice in
  1)
    echo "Deploying to Cloudflare Pages..."
    npx wrangler pages deploy dist --project-name=semiz-kaltenleutgeben
    ;;
  2)
    echo "Deploying to Netlify..."
    npx netlify deploy --prod --dir=dist
    ;;
  3)
    echo "Deploying to Vercel..."
    npx vercel --prod
    ;;
  *)
    echo "Invalid choice. Build output is in ./dist"
    ;;
esac

echo "✅ Done!"
