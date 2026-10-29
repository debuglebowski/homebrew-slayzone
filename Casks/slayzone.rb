cask "slayzone" do
  version "0.36.2"

  on_arm do
    sha256 "0996612a8f905aca40e2e55a45f4b6b8ea8de73ce8db468bb1288257fd8d77a1"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "6496c13d2381aa0b9e5ff91426059c98ddd9fbbb2bbbd5e753dda479f60d98d8"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.2/SlayZone-x64.dmg"
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