cask "slayzone" do
  version "0.15.0"

  on_arm do
    sha256 "60733c41cac727f56ccc7fe8169b97cca009eb9a63a74aabb8825b13b899ab17"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.15.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "8a2fddf97764de3c05abb5680c50147c886ea9f0d19b6a846f6cec53e8b4d021"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.15.0/SlayZone-x64.dmg"
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