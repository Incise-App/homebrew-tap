cask "incise" do
  version "1.12.30"
  sha256 "c2ce52986e7df7e17af2b3ae01df3f5336098b494b71197d3241178d6d356d3a"

  url "https://github.com/Incise-App/homebrew-tap/releases/download/v#{version}/Incise.dmg"
  name "Incise"
  desc "Precise native text editor"
  homepage "https://incise.dev/"

  # The app updates itself via Sparkle from 1.12.24 on. This declares that, but
  # it no longer stops `brew upgrade`: Homebrew 6.x upgrades auto-updating casks
  # by default, and only HOMEBREW_NO_UPGRADE_AUTO_UPDATES_CASKS=1 restores the
  # old skip (checked against 6.0.18 on 2026-08-22 — an earlier version of this
  # comment claimed the opposite).
  #
  # Reinstalling over a copy Sparkle already updated is harmless only while the
  # cask is never behind the appcast. The release runbook guarantees that by
  # pushing the cask (step 5) before publishing the appcast (step 5b); reverse
  # that order and `brew upgrade` silently downgrades anyone who took the
  # in-app update.
  auto_updates true
  depends_on macos: :ventura

  app "Incise.app"
  binary "#{appdir}/Incise.app/Contents/Resources/incise"

  # Two Application Support directories, deliberately: ViewMetadataStore writes
  # "Incise" (per-file column widths and table state) while SessionManager writes
  # "dev.incise.app" (session and unsaved drafts). Missing the second one left a
  # zapped install with its tabs and drafts intact.
  zap trash: [
    "~/Library/Application Support/dev.incise.app",
    "~/Library/Application Support/Incise",
    "~/Library/Caches/dev.incise.app",
    "~/Library/HTTPStorages/dev.incise.app",
    "~/Library/Preferences/dev.incise.app.plist",
    "~/Library/Saved Application State/dev.incise.app.savedState",
    "~/Library/WebKit/dev.incise.app",
  ]

  # --force is documented as "overwrite existing files", which is not the same as
  # replacing the bundle: App Store files the Developer ID build does not ship —
  # Contents/_MASReceipt above all — can survive inside the new app. Quitting and
  # trashing first is one extra step and leaves nothing behind, so that is what
  # this recommends; --force stays the recovery path for anyone already stuck.
  caveats <<~EOS
    Replacing the Mac App Store edition? Quit Incise, drag it from /Applications
    to the Trash, then install. That leaves no App Store files inside the new
    app.

    Installing over it instead fails with "there is already an App at
    /Applications/Incise.app". If you are already stuck there:

      brew install --cask --force incise

    The App Store build is sandboxed, so its preferences and last session do
    not carry over. Your files are untouched.
  EOS
end
