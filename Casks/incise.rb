cask "incise" do
  version "1.12.6"
  sha256 "f9ae972a1b1ed725bc5882d0d6c7c9ac4fc3e2a4cf767ccf2baf3045f0af9029"

  url "https://github.com/Incise-App/homebrew-tap/releases/download/v#{version}/Incise.dmg"
  name "Incise"
  desc "Precise native text editor"
  homepage "https://incise.dev/"

  depends_on macos: :ventura

  app "Incise.app"
  binary "#{appdir}/Incise.app/Contents/Resources/incise"

  zap trash: [
    "~/Library/Application Support/Incise",
    "~/Library/Caches/dev.incise.app",
    "~/Library/Preferences/dev.incise.app.plist",
    "~/Library/Saved Application State/dev.incise.app.savedState",
  ]
end