# Node.js 20+ Compatibility Fix for RAGFlow Web Frontend

## Problem

When running `npm install` or `npm run build` on Node.js 20+, the build fails with:

```
fatal - Error: Register plugin ... failed, since No such module: http_parser
[cause]: Error: No such module: http_parser
    at process.binding (node:internal/bootstrap/realm:162:11)
    at Object.<anonymous> (.../http-deceiver/lib/deceiver.js:22:24)
```

This is caused by the `http-deceiver` package (dependency of umi) using `process.binding('http_parser')`, which was removed in Node.js 20.

## Solution

Apply the following changes to the medlibre-ragflow repository:

### 1. Update `web/package.json`

```diff
-    "umi": "^4.0.90",
+    "umi": "^4.5.3",

-    "@umijs/lint": "^4.1.1",
-    "@umijs/plugins": "^4.1.0",
+    "@umijs/lint": "^4.4.0",
+    "@umijs/plugins": "^4.4.0",

   "engines": {
-    "node": ">=18.20.4"
+    "node": ">=18.20.4 <20"
   },
```

### 2. Create `.nvmrc` files

Create `.nvmrc` in the repository root:
```
18.20.4
```

Create `web/.nvmrc`:
```
18.20.4
```

### 3. Update Documentation

Add Node.js version prerequisites to:
- `web/README.md`
- `docs/develop/launch_ragflow_from_source.md`

## Quick Fix Script

Run this script from the medlibre-ragflow repository root:

```bash
#!/bin/bash

# Create .nvmrc files
echo "18.20.4" > .nvmrc
echo "18.20.4" > web/.nvmrc

# Update package.json using sed
cd web
sed -i 's/"umi": "\^4\.0\.90"/"umi": "^4.5.3"/g' package.json
sed -i 's/"@umijs\/lint": "\^4\.1\.1"/"@umijs\/lint": "^4.4.0"/g' package.json
sed -i 's/"@umijs\/plugins": "\^4\.1\.0"/"@umijs\/plugins": "^4.4.0"/g' package.json
sed -i 's/"node": ">=18\.20\.4"/"node": ">=18.20.4 <20"/g' package.json

# Clean and reinstall
rm -rf node_modules package-lock.json
npm cache clean --force
npm install

echo "Fix applied! Please use Node.js 18.x for builds."
```

## Alternative: Just Use Node.js 18

If you prefer not to modify the codebase, simply use Node.js 18.x:

```powershell
# Windows with nvm-windows
nvm install 18.20.4
nvm use 18.20.4

# Clean install
cd web
Remove-Item -Recurse -Force node_modules
Remove-Item -Force package-lock.json
npm cache clean --force
npm install
npm run build
```

## Files Changed

1. `.nvmrc` (new)
2. `web/.nvmrc` (new)
3. `web/package.json` (modified)
4. `web/README.md` (modified)
5. `docs/develop/launch_ragflow_from_source.md` (modified)

## References

- [UmiJS GitHub Issue #13058](https://github.com/umijs/umi/issues/13058) - Node 24 incompatibility
- [http-deceiver uses deprecated process.binding](https://stackoverflow.com/questions/67503242/)
