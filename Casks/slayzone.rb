cask "slayzone" do
  version "0.14.0"

  on_arm do
    sha256 "345fc9593723b0138ed6ddd7736547f32ab6bd077f2a85cdf8efa5e16889051b"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.14.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "194239cc96654fdf8223dde211a5d8405cc4ec1cfcfe80ed9d646df7b0b270dc"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.14.0/SlayZone-x64.dmg"
  end

  name "SlayZone"
  desc "Desktop task management with integrated AI coding assistants"
  homepage "https://github.com/debuglebowski/slayzone"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SlayZone.app"

  zap trash: [
    "~/Library/Application Support/SlayZone",
    "~/Library/Preferences/com.slayzone.app.plist",
    "~/Library/Caches/com.slayzone.app",
    "~/Library/Logs/SlayZone",
  ]
end