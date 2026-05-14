# Vercel Setup

Upload this project root to GitHub, then import that repo into Vercel.

Required files at the GitHub repository root:

```text
api/
assets/
app-config.js
app.js
index.html
styles.css
server.js
package.json
vercel.json
```

Vercel settings:

```text
Framework Preset: Other
Build Command: leave empty
Output Directory: leave empty
Install Command: npm install
```

Environment variables:

```text
DATABASE_URL = your Neon/Postgres pooled connection string
ADMIN_PASSWORD = optional default admin password
```

The frontend uses same-origin `/api/...` calls on Vercel, so keep `app-config.js` as:

```js
window.HYPER_API_BASE_URL = window.HYPER_API_BASE_URL || "";
```

After Vercel deploys, use the Vercel production URL when rebuilding the Android APK:

```powershell
cd C:\CODEX\HyperRegeditAndroid
.\set-online-backend.ps1 -BackendUrl "https://your-project.vercel.app"
```
