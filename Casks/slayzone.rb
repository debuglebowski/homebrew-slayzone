cask "slayzone" do
  version "0.27.2"

  on_arm do
    sha256 "46bed2d0dbe01e1bfe75a4d3795ae0342d2008221846171f1f6930328c1211fa"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "a325d8651687df33b48870f1b06ee6bdb3d6dd25ccf2f48ab3fdc6c698aec7aa"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.27.2/SlayZone-x64.dmg"
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