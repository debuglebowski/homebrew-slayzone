cask "slayzone" do
  version "0.24.0"

  on_arm do
    sha256 "6fda233a04c30ccc6fad8337cadc70cf80e594613582f8f7f0402e01bfab9cfc"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.24.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "01ffb4dbe35f61a5784fc847fc2ff5cbe3d5e4d8ce53c56c0a30d82a995f99d1"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.24.0/SlayZone-x64.dmg"
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