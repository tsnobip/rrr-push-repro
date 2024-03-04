# RescriptRelayRouter push inside a useEffect

When pushing to a new route inside a useEffect, the URL changes but the page content remains the same.

config:

```
"@rescript/core": "1.1.0",
"@rescript/react": "^0.12.1",
"react": "^18.2.0",
"react-dom": "^18.2.0",
"react-relay": "^16.2.0",
"relay-runtime": "^16.2.0",
"rescript": "11.1.0-rc.3",
"rescript-relay": "^3.0.0-rc.4",
"rescript-relay-router": "^1.1.0"
```

## Development

Run ReScript in dev mode:

```sh
npm run res:dev
```

In another tab, run the Vite dev server:

```sh
npm run dev
```

Then open [http://localhost:5173/](http://localhost:5173/) and follow the instructions.
