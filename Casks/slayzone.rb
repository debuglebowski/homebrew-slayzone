cask "slayzone" do
  version "0.30.0"

  on_arm do
    sha256 "121aea58bcaa3ec353ba19d856bab67eb7c3031fae567e8e1aa5d9799a5b748f"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.30.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "809a6fc27897816dc31c3a12282e05776678e324cbb60fbd958547e1139b542b"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.30.0/SlayZone-x64.dmg"
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