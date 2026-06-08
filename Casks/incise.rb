cask "incise" do
  version "1.0.1"
  sha256 "d946475a5021c9f7b2dc924d8822ce641bfd62a5c08ccd1b82975f4c6467da85"

  url "https://github.com/ihistand/homebrew-tap/releases/download/v#{version}/Incise.dmg"
  name "Incise"
  desc "Precise native macOS text editor"
  homepage "https://incise.dev/"

  depends_on macos: ">= :ventura"

  app "Incise.app"

  zap trash: [
    "~/Library/Application Support/Incise",
    "~/Library/Caches/dev.incise.app",
    "~/Library/Preferences/dev.incise.app.plist",
    "~/Library/Saved Application State/dev.incise.app.savedState",
  ]
end
