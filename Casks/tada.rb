cask "tada" do
  version "0.4.0"
  sha256 "a5966e2d23491c0a5a19534bebb7ae8dba15aa14e5744d61cb2b27af4857455c"

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
