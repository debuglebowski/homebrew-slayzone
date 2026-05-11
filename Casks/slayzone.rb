cask "slayzone" do
  version "0.29.0"

  on_arm do
    sha256 "ca82df25ed7d932d00a4d3e90f94a283ac745d14e8fd0a63e4ea7157b30fbfc3"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.29.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "3d5dd9e3bf8e95d74bca56e123cc27d763c51140fa03a1c5877cd67ea1fe4537"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.29.0/SlayZone-x64.dmg"
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