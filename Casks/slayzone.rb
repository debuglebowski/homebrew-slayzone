cask "slayzone" do
  version "0.27.1"

  on_arm do
    sha256 "014a3ecdae4707df4ab0f19e2d34acfe1135d6604040729614327533f01cd1d4"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "efa761c2980b5445a6b17b9d640a1118a976824b6ad8128a9d156c6973520715"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.1/SlayZone-x64.dmg"
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