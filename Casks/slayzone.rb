cask "slayzone" do
  version "0.27.1"

  on_arm do
    sha256 "03e1e310ef062140431cca1bcada97a1a0e7b5b0082ae7cd89422b9d61faf6f8"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "2dc29be0e55fbf86835bf4c1fd625e0e6817ee479182199ca3044b9d3dfac313"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.1/SlayZone-x64.dmg"
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