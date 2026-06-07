cask "incise" do
  version "1.0.0"
  sha256 "9a7ace28b9c0b105e61fd1038b636b933368f6c460a22eb92230fa641cc53612"

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
