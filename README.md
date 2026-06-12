# Pablo Motta — Portfolio

Static portfolio site built with the [Start Bootstrap Agency](https://startbootstrap.com/theme/agency) template, Gulp, and SCSS.

## Prerequisites

- Node.js 18 or newer

## Setup

```bash
npm install
```

## Development

Start the local dev server with live reload (opens at http://localhost:3000):

```bash
npm start
```

## Build

Compile SCSS, minify JS, and copy vendor assets from `node_modules`:

```bash
npm run build
```

## Project structure

- `index.html` — main page
- `scss/` — source styles (compiled to `css/`)
- `js/` — source scripts (minified in place)
- `vendor/` — generated from npm dependencies (do not edit by hand)

## Roadmap

Planned migration (not started):

1. **Next.js** — component-based architecture with reusable UI
2. **Tailwind CSS** — replace Bootstrap/SCSS with utility-first styling
3. **Headless CMS** — free tier (e.g. Sanity, Contentful, or Decap) for editable content
4. **Vercel** — deploy and host the Next.js app
