cask "slayzone" do
  version "0.32.1"

  on_arm do
    sha256 "4e1089f9cef1dba38ea299d520b9a161938a3101a19a3a7f0506e67ed333dab2"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "e3b92a8f4292aeee70823c348a9491d62003cef2440bac26d146fb9ca2efde52"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.1/SlayZone-x64.dmg"
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