cask "slayzone" do
  version "0.33.1"

  on_arm do
    sha256 "36343cc81947120224c326fab5bbb738b8a00124345bb1f62a4bef79b65d5561"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.33.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "12917959f23a600fc3f518d7910981df850486fa9c380b9b46444d113557f278"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.33.1/SlayZone-x64.dmg"
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