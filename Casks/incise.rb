cask "incise" do
  version "1.0.13"
  sha256 "b8297cc2859999a0e6f576a649dae0993aeeb3c177e7e1b476360abaed4fdfa8"

  url "https://github.com/ihistand/homebrew-tap/releases/download/v#{version}/Incise.dmg"
  name "Incise"
  desc "Precise native text editor"
  homepage "https://incise.dev/"

  depends_on macos: :ventura

  app "Incise.app"

  zap trash: [
    "~/Library/Application Support/Incise",
    "~/Library/Caches/dev.incise.app",
    "~/Library/Preferences/dev.incise.app.plist",
    "~/Library/Saved Application State/dev.incise.app.savedState",
  ]
end
