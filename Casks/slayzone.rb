cask "slayzone" do
  version "0.18.0"

  on_arm do
    sha256 "ce3eaac041d67d86341b4837cceb2b5f25d585db61321fe2adb6180da6193b13"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.18.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "945981d0c63fd2915b2ed3ddc77eb4a3345f16e5fa6428a4c7589e249d23f989"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.18.0/SlayZone-x64.dmg"
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