cask "slayzone" do
  version "0.32.3"

  on_arm do
    sha256 "144dd510b38aac51be4c1de35168ceefa3b8eaccc9df752ba046bf876f40e054"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.3/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "89ab233880ae480e87bb4dca9994cfcd0485f20ac0a319fef19493b5badf1b01"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.3/SlayZone-x64.dmg"
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