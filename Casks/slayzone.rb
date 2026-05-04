cask "slayzone" do
  version "0.26.0"

  on_arm do
    sha256 "84367f8622d7b6cf5c5a329243520015de093b963e44a486ac41f3420715c0e3"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.26.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "9900d2e89d1b82afbd0df7c868e3c42fa743316e93dbbb073856bd798e107132"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.26.0/SlayZone-x64.dmg"
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