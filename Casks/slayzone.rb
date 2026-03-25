cask "slayzone" do
  version "0.10.0"

  on_arm do
    sha256 "8d6206ade09d46f5740fad3c91f5b2c134861bf3808012f54723a2b24b7d0627"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.10.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "efeeeb1894d426c62ff35ca48b2b7792b09ea01a5fd1ba54d046d4e83b14d1e4"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.10.0/SlayZone-x64.dmg"
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