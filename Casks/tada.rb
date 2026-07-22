cask "tada" do
  version "0.3.0"
  sha256 "52fd47cffb5b3a1466c559a73ef51feea9da2ca50e3660ad04279509ccde8b41"

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
