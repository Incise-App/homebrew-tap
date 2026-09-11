# Incise Homebrew Tap

The Homebrew tap for [Incise](https://incise.dev) — a precise, native macOS text editor.

## Install

```bash
brew tap incise-app/tap
brew trust incise-app/tap
brew install --cask incise
```

The `brew trust` step is required. Homebrew will not load a cask from a
third-party tap until the tap is trusted, so without it the install stops rather
than completing. It is a one-time step per tap, not per release.

## Update

```bash
brew upgrade --cask incise
```

Incise also updates itself — installed copies check for new releases and can
apply them in place, so `brew upgrade` is the belt to that braces.

## Switching from the Mac App Store build

Both editions are the same app; the App Store one is sandboxed and has no
integrated terminal. To replace an App Store copy with this one, add `--force`:

```bash
brew install --cask --force incise
```
