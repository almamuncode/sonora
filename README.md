# SONORA

An original fictional premium audio storefront portfolio built with Next.js App Router, TypeScript, Tailwind CSS and Lucide.

## Run locally

```sh
npm install
npm run dev
```

Open http://localhost:3000. Production: `npm run build && npm start`.

## Checks

```sh
npm run typecheck
npm run lint
npm run build -- --webpack
```

## Content and sections

Product data lives in `data/products.ts`. Independent editorial sections live in `components/sections.tsx`, shopping state in `components/store.tsx`, and product interactions in `components/product-detail.tsx`. Pages are server components except interactive controls. The original SVG product illustrations in `public/images/` are replaceable concept assets, not product photographs. No reference artwork is used in the site.

The site includes home, collection, five product pages, technology, design, about, help, privacy, terms and a 404 page. The bag and wishlist persist in localStorage. Search, category filtering, sorting, galleries, color/quantity selection, accordions and demo newsletter/checkout are implemented. No payment, account, order, support or newsletter backend is connected. Product specifications and sample reviews are fictional and labeled accordingly.

Set `NEXT_PUBLIC_SITE_URL` to your real deployment origin to populate the sitemap. Do not set a fictional production domain. Before launch, add your final canonical/OG image URLs and replace illustrations with original SONORA photography. Keep the concept disclosure if this remains a portfolio project.

## Verification

TypeScript, ESLint and the production build pass. Browser checks cover desktop and mobile product layouts, finish selection, quantity updates, and adding the selected variant to the bag. The large-screen layout uses a centered 1,320px content grid. Lighthouse scores have not been measured.
