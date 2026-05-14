# Online Setup

This project is ready for shared online use through the included Node server.

## Backend

Deploy this folder as a Node web service:

- Build command: `npm install`
- Start command: `npm start`
- Environment variable: `DATABASE_URL`
- Optional environment variable: `ADMIN_PASSWORD`

Use a Postgres connection string for `DATABASE_URL`. The existing server creates the `app_store` table automatically and stores shared admin settings, packages, device locks, and activity logs there.

## Android APK

After the backend is deployed, rebuild the APK with the live backend URL:

```powershell
cd C:\CODEX\HyperRegeditAndroid
.\set-online-backend.ps1 -BackendUrl "https://your-service.onrender.com"
```

The output APK will be:

```text
C:\CODEX\HyperRegedit-online.apk
```

For the website hosted on the same backend, leave `app-config.js` empty. For the APK, `app-config.js` must point to the live backend URL.
