# Configuring Node - A short guide on configuring a node install via fnm to use pnpm and block npm

## Getting Started

Getting started is as easy as following these steps:

### Step 1: Enable pnpm via Corepack

```
corepack enable pnpm
```

### Step 2: Install and pin a specific pnpm version

```
corepack prepare pnpm@latest --activate
```

### Step 3: Disable npm via Corepack

```
corepack enable --install-directory ~/.local/share/fnm/node-versions/$(fnm current)/installation/bin pnpm
corepack disable npm
```

__NOTE:__ This won't fully block npm because npm ships as a real binary with Node.js, not a Corepack shim. This is for good measure only.

### Step 4: Block npm with a script that rejects calls

```
# Find where npm lives
which npm

# Replace it with a blocking script (adjust path to match your output above)
echo '#!/bin/sh
echo "npm is disabled. Please use pnpm instead."
exit 1' > ~/.local/share/fnm/node-versions/$(fnm current)/installation/bin/npm

chmod +x ~/.local/share/fnm/node-versions/$(fnm current)/installation/bin/npm
```

### Step 5: Do the same for ```npx```

```
echo '#!/bin/sh
echo "npx is disabled. Please use pnpm dlx instead."
exit 1' > ~/.local/share/fnm/node-versions/$(fnm current)/installation/bin/npx

chmod +x ~/.local/share/fnm/node-versions/$(fnm current)/installation/bin/npx
```

### Step 6: Verify everything works

```
pnpm --version   # should print pnpm version
npm --version    # should print "npm is disabled..."
```
