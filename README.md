# Tabbify Quickstart

The smallest possible Tabbify app: a static page served by `busybox httpd`.

Push to `main` and GitHub Actions deploys it to Tabbify — Tabbify clones this
repo, builds it on its own infrastructure, and runs it as a Firecracker microVM.
No servers, no registry login, no GitHub App.

## Deploy it yourself

1. Fork or copy this repo.
2. Add a repository secret `TABBIFY_TOKEN` (your Tabbify API token):
   **Settings → Secrets and variables → Actions → New repository secret**.
3. `git push`. Watch the **Actions** tab, then open your app's URL.

Full walkthrough: https://tabbify.io/docs/quickstart

## Files

- `index.html` — the page that gets served.
- `Dockerfile` — how the app is packaged (exec-form `ENTRYPOINT`).
- `tabbify.toml` — what to build and where to run it.
- `.github/workflows/deploy.yml` — the one-step deploy on every push.
