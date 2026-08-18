cask "incise" do
  version "1.12.23"
  sha256 "d1ccdf5e2f4db0ccf7f341d16cc696a94266eb931458a08e54917a5aaee3a7c9"

  url "https://github.com/Incise-App/homebrew-tap/releases/download/v#{version}/Incise.dmg"
  name "Incise"
  desc "Precise native text editor"
  homepage "https://incise.dev/"

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