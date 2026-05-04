cask "slayzone" do
  version "0.26.2"

  on_arm do
    sha256 "354a70298ff0ed9582b96d0c5747bb8a1e67e760132ea2b42c7e7ba602ba5a8d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.26.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "49684a2994e2036399b9e5465753b3ace6572e416fe96b3a9e430a2c1cd0d3ef"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.26.2/SlayZone-x64.dmg"
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