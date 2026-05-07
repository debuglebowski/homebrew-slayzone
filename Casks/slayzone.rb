cask "slayzone" do
  version "0.28.0"

  on_arm do
    sha256 "151efe2fbfd40723de0ea50312030a2c499d8091446c69f07c5d6a7b2d4128b9"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.28.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "b288e81e346b0cdfc00d30c2515a5c7a5da39ea2ce76649576626f7a9994923b"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.28.0/SlayZone-x64.dmg"
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