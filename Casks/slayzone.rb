cask "slayzone" do
  version "0.2.6"

  on_arm do
    sha256 "ded719e3985179faecf8f6ea92e11ec8429c3c347986236e119c52e7d2fdbf04"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.2.6/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "db2b19ec14a5fe09318358f0fc3eb66d15d363c8deb54aa081296546116f8e7e"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.2.6/SlayZone-x64.dmg"
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