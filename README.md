# iMadeFire Branding

Glassmorphic logo styling with CSS effects.

## Files

- `index.html` - Main styled logo page
- `iMadeFire-simple-white-on-black.svg` - Source SVG logo
- `iMadeFire-modern-mockup.jpeg` - Reference design
- `deploy.sh` - Auto-deploy to GitHub Pages

## Local Development

```bash
# Serve locally
python3 -m http.server 8000

# View at: http://localhost:8000
```

## Deploy to GitHub Pages

### One-time setup:

```bash
# Initialize git repo
git init

# Create GitHub repo at github.com/USER/REPO

# Link repo
git remote add origin git@github.com:USER/REPO.git

# Initial commit
git add .
git commit -m "Initial commit"
git push -u origin main
```

### Enable GitHub Pages:
1. Go to: `github.com/USER/REPO/settings/pages`
2. Source: Deploy from branch `main` / root
3. Save

Live URL: `https://USER.github.io/REPO/`

### Auto-deploy:

```bash
./deploy.sh
```

## Alternative: ngrok (temporary public URL)

```bash
# Install
snap install ngrok

# Serve locally
python3 -m http.server 8000

# In another terminal, tunnel
ngrok http 8000

# Returns public URL like: https://abc123.ngrok.io
```

## Styling Features

- Dark vignette background (#0F1216 → #1A1D23)
- Circuit board patterns (SVG, top-right & bottom-left)
- Starfield sparkles
- Warm-to-cool gradient (amber → lavender → steel blue)
- Glassmorphism (frosted translucent text)
- Multi-layer diffuse glow
- Flame icon (16x22px, positioned above "i" dot)
- Glass overlay for depth
