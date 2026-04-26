cask "slayzone" do
  version "0.23.0"

  on_arm do
    sha256 "c0baa5a83f2d683142732475a1c2ff3f454f93e9ec176b467e1ca89537858899"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.23.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "c0d427b422a62f9018f6d05fba63ce0711bd2d5dbb93c1fa9f4167e51466288f"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.23.0/SlayZone-x64.dmg"
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