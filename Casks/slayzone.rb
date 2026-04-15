cask "slayzone" do
  version "0.20.0"

  on_arm do
    sha256 "8812ab697580a8e8fa1c463af6a7b747b21441e1eac18c728518a55f2fe93a87"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.20.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "3d5ea05c5b9c0eb97e18c0485b6c04fa0b1740f3b98036b6c7b260b80e6ec687"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.20.0/SlayZone-x64.dmg"
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