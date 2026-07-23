cask "incise" do
  version "1.12.11"
  sha256 "a2a457048b0b9361dde5f64d69ef8f5e6ec838ca28be3d7341b002c38849a328"

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