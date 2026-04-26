cask "slayzone" do
  version "0.23.1"

  on_arm do
    sha256 "0456fd3b1c3eb12587174d01efc2f7d80240c6294690a865c0b247217a32a8be"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.23.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "0ae968405160d7cf4bf082a84a831cbdddee0659872c6b06130ec8c1283e60dc"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.23.1/SlayZone-x64.dmg"
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