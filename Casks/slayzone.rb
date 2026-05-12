cask "slayzone" do
  version "0.29.1"

  on_arm do
    sha256 "2d0a790bea86f712667097961b0832b8daec396823bff8e1aee63b2e0c9c6500"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.29.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "1279b527245a8a130f703088b4aaa91f128cc3ac67d0e7ac11ea51c599d94878"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.29.1/SlayZone-x64.dmg"
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