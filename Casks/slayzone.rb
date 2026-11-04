cask "slayzone" do
  version "0.37.0"

  on_arm do
    sha256 "d0511604c376e1cd31536791cb065d8abaf5408e1dabe2f8fb6a1b83979b9872"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.37.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "8b4793dc9adee7959d61d9c417384bee5381d58c17b3789e0af7881464b55273"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.37.0/SlayZone-x64.dmg"
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