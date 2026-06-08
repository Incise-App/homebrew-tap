cask "incise" do
  version "1.0.2"
  sha256 "e11b0379ee7dfe602acbe7aa9d3dc6565a089671cf26c01b460de02f3c222a0f"

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
