cask "incise" do
  version "1.12.22"
  sha256 "0b3510d25e1c316e58ab0712c7d795fa8650d7f98f1e91693e9ee093304d4de5"

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