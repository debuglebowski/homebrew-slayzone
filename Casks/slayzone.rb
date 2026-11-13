cask "slayzone" do
  version "0.40.0"

  on_arm do
    sha256 "fb801acd94756debb35decdb01eb6ee679fd589d00194a0d0575c49272cc2544"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.40.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "a959ed9e236d78f5d5d76543b407a8656af8c6f432d063ee618a5277ab2c3232"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.40.0/SlayZone-x64.dmg"
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