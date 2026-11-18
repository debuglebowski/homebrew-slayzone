cask "slayzone" do
  version "0.41.1"

  on_arm do
    sha256 "cb6006508c50ccbb97b9922fd09a3484acd7c211fa37cddab579e87397d1ee40"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.41.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "b8be7432c39b1d228a39d39d88fd69b78168984992330cf051b78b014d99270d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.41.1/SlayZone-x64.dmg"
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