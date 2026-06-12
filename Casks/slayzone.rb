cask "slayzone" do
  version "0.35.0"

  on_arm do
    sha256 "4ef4c06ae76c1b359912734a77979d86bf2882a3760bdcbb073bb957db143018"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.35.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "b9daafd08dfa818a9ba1438a19519e9a6adff447c4c81ee543e397febf979945"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.35.0/SlayZone-x64.dmg"
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