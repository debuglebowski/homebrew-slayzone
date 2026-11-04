cask "slayzone" do
  version "0.37.1"

  on_arm do
    sha256 "fe143320049c2fa476db81d16c421642897821f243e4806123e4ae9c39ecbc81"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.37.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "66a465a8ac4de4bcfcd1bcce0782adc575baea73d092ec91df47f0c7468f63fa"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.37.1/SlayZone-x64.dmg"
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