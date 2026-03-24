cask "slayzone" do
  version "0.7.0"

  on_arm do
    sha256 "59f0224240636d1212d2122566854ee42d4c36afbf5bebe37a73f54e3ecaf0ba"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.7.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "81b9e0bb2a60bb6189b2ad603f3923131370da9e9d8d8d002c9ceafee3fbd45d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.7.0/SlayZone-x64.dmg"
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