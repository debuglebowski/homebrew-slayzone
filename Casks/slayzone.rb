cask "slayzone" do
  version "0.27.0"

  on_arm do
    sha256 "43148cce2e2365a07de6d624b136f0b13697f64cdc0ee5713cb721a57b1fc274"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "3b4793a5ae1e0206ccc1de8069ab1f2f942686f483b4d778441eeddf8c50563f"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.0/SlayZone-x64.dmg"
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