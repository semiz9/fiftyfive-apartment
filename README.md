# Natur & Komfort nahe Wien – 90m²

Apartment website for **Gerngasse 2/2, 2391 Kaltenleutgeben** built with Astro + Tailwind CSS.

## Quick start

```bash
pnpm install
pnpm dev        # http://localhost:4321
pnpm build      # builds to ./dist
pnpm preview    # preview production build
```

## Deploy

### Cloudflare Pages (recommended — unlimited bandwidth, AT CDN)

1. `pnpm build`
2. Connect GitHub repo to [Cloudflare Pages](https://pages.cloudflare.com)
3. Build command: `pnpm build` · Output: `dist`

Or via CLI:
```bash
./deploy.sh   # interactive: Cloudflare / Netlify / Vercel
```

### Netlify
```bash
npx netlify deploy --prod --dir=dist
```

### Vercel
```bash
npx vercel --prod
```

## Git setup
```bash
git init
git add .
git commit -m "initial: Semiz Kaltenleutgeben apartment website"
gh repo create semiz-kaltenleutgeben --private --push
```

## Structure

```
src/
├── layouts/Layout.astro          # HTML shell, Schema.org, PWA, dark mode
├── components/
│   ├── LanguageToggle.astro      # DE/EN + dark mode toggle (fixed header)
│   ├── HeroSlider.astro          # Swiper fullscreen image carousel
│   ├── FeaturesGrid.astro        # 3×2 amenity grid
│   ├── CheckTimes.astro          # Check-in 15:00 / Check-out 12:00
│   ├── RealReviews.astro         # Verified Airbnb reviews
│   ├── BookButton.astro          # Full-width CTA section
│   └── AddressMap.astro          # Google Maps embed + directions
└── pages/index.astro             # Main page composition + footer/Impressum
```

## Key info
- **Address**: Gerngasse 2/2, 2391 Kaltenleutgeben
- **Booking**: https://www.airbnb.de/rooms/1334011307998790600
- **WhatsApp**: +43 676 5558100
- **Email**: semizbnb@outlook.com
- **GLN**: 9110034468460 · **GISA**: 38456497
