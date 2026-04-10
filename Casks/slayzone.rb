cask "slayzone" do
  version "0.17.2"

  on_arm do
    sha256 "2ad398fdf2c7318b1c9c8b8558cb6a2e18033ba3a47c367996f2d9c3c65a5482"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "b6719e17c54504e5acb673c97e2f04622fa0cd310d412b75e5f288cf15b8d975"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.2/SlayZone-x64.dmg"
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