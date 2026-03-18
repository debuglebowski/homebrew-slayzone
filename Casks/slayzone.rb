cask "slayzone" do
  version "0.6.1"

  on_arm do
    sha256 "8e632577ac9cc86bd1102588d506730cb3678b560ce08656e5978d11a7c9d3d5"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.6.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "a98036c53cf4416012f74b3c60bd2c3e0ce7a9a46dd64e5381fadca20dbc6990"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.6.1/SlayZone-x64.dmg"
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