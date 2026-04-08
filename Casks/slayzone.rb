cask "slayzone" do
  version "0.16.0"

  on_arm do
    sha256 "5702d62c38dc340e0e5dec2b1dfb9b8c67de637c4af36bd5ac1137f03f91aa24"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.16.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "ad080cb36fe886c50a936bf0ad1685a8163594cccdc1de49a9ecef1dfe08388f"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.16.0/SlayZone-x64.dmg"
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