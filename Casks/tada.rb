cask "tada" do
  version "0.1.0"
  sha256 "99f101f5d5260fc5731c771adab2f8e4de71d44f17d4d47f21d0fc7af28bab05"

  url "https://github.com/SamiAbi/tada/releases/download/v#{version}/Tada.dmg"
  name "Tada"
  desc "Terminal-first agent cockpit for macOS"
  homepage "https://github.com/SamiAbi/tada"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Tada.app"

  postflight do
    # Unsigned app: clear quarantine so first launch works without Gatekeeper's
    # "damaged" dialog (until the app is notarized).
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Tada.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/dev.samiworld.tada",
    "~/Library/Caches/dev.samiworld.tada",
    "~/Library/HTTPStorages/dev.samiworld.tada",
    "~/Library/WebKit/dev.samiworld.tada",
  ]
end
