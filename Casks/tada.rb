cask "tada" do
  version "0.2.0"
  sha256 "3408236a9a57036e704f9e9c8fbeaa97ea679c548b4fff48bcaa668390411813"

  url "https://github.com/SamiAbi/tada/releases/download/v#{version}/Tada.dmg"
  name "Tada"
  desc "Terminal-first agent cockpit for macOS"
  homepage "https://github.com/SamiAbi/tada"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Tada.app"

  zap trash: [
    "~/Library/Application Support/dev.samiworld.tada",
    "~/Library/Caches/dev.samiworld.tada",
    "~/Library/HTTPStorages/dev.samiworld.tada",
    "~/Library/WebKit/dev.samiworld.tada",
  ]
end
