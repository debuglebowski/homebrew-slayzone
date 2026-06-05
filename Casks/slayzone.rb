cask "slayzone" do
  version "0.34.0"

  on_arm do
    sha256 "ac15085f29d0783be7af3e7742ecf046d1550f33d5e4ef6557ad512d84bdb264"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.34.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "f3d77ca51be582088b6dec3ea9e507ba9458de540c9d0762994bac2e65acd228"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.34.0/SlayZone-x64.dmg"
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