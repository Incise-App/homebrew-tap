cask "incise" do
  version "1.12.24"
  sha256 "6aba36fbd3cceba83b6d42a85482b0f4b9685bfa4f54c12b15334bdbdc66d77c"

  url "https://github.com/Incise-App/homebrew-tap/releases/download/v#{version}/Incise.dmg"
  name "Incise"
  desc "Precise native text editor"
  homepage "https://incise.dev/"

  # The app updates itself via Sparkle from 1.12.24 on; plain `brew upgrade`
  # skips it so brew doesn't reinstall over a newer self-updated copy
  # (`brew upgrade --greedy` still forces it).
  auto_updates true

  depends_on macos: :ventura

  app "Incise.app"
  binary "#{appdir}/Incise.app/Contents/Resources/incise"

  caveats <<~EOS
    If the Mac App Store edition of Incise is already in /Applications, this
    install fails with "there is already an App at /Applications/Incise.app".
    Either delete the App Store copy first, or let Homebrew replace it:

      brew install --cask --force incise

    The App Store build is sandboxed, so its preferences and last session do
    not carry over. Your files are untouched.
  EOS

  zap trash: [
    "~/Library/Application Support/Incise",
    "~/Library/Caches/dev.incise.app",
    "~/Library/Preferences/dev.incise.app.plist",
    "~/Library/Saved Application State/dev.incise.app.savedState",
  ]
end