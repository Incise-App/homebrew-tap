# Homebrew Tap (ihistand)

A custom Homebrew Tap containing casks and formulae for my personal and commercial macOS applications.

## Installation

To add this tap to your Homebrew installation, run:

```bash
brew tap ihistand/tap
```

## Available Casks

### Incise
A precise native macOS text editor.

To install:
```bash
brew install --cask incise
```

### ListAnvil Relay
The local desktop relay worker for [ListAnvil](https://listanvil.com/) — posts marketplace listings from your own Mac and IP. Apple Silicon (arm64) only.

To install in one step (no separate `brew tap` needed):
```bash
brew install --cask ihistand/tap/listanvil-relay
```

Or, if you've already run `brew tap ihistand/tap`:
```bash
brew install --cask listanvil-relay
```
