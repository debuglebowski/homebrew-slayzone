cask "slayzone" do
  version "0.36.4"

  on_arm do
    sha256 "61f10bc3bba1c37aa649822d889b3dcf5e261b22ce6222e8fc133ca0b1550365"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.4/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "9f0473c4de6683610e5a9b23aed6c69992aa911c304e6d3b03d8b96b214e3a79"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.4/SlayZone-x64.dmg"
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