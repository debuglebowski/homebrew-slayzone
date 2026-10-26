cask "slayzone" do
  version "0.36.0"

  on_arm do
    sha256 "b9ea1991629302c9f7f56fd9881f24152c3fa72c4703e5097e9cef7e29aefd37"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "ca279c11b16841ef4c58a453f05dedac3cfaa969c0ad275fb8560224f6762f66"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.0/SlayZone-x64.dmg"
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