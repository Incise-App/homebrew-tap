# Incise Homebrew Tap

The Homebrew tap for [Incise](https://incise.dev) — a precise, native macOS text editor.
Requires macOS 13 (Ventura) or later.

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

## The `incise` command

The cask also puts an `incise` command on your `PATH`:

```bash
incise                 # open the current folder as a workspace
incise notes.md src/   # a file opens in a tab, a folder as a workspace
```

## Switching from the Mac App Store build

Both editions are the same editor. The App Store one is sandboxed, so it has no
integrated terminal and can't run external formatters. To replace it with this
one, quit Incise, move it from /Applications to the Trash, then install:

```bash
brew install --cask incise
```

That leaves no App Store files inside the new app. Installing over the App
Store copy instead stops with "there is already an App at
/Applications/Incise.app"; if you are already there, `--force` gets you out:

```bash
brew install --cask --force incise
```

The App Store edition's preferences and last session live in its sandbox, so
they don't carry over. Your files are untouched.
