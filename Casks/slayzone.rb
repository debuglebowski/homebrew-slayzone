cask "slayzone" do
  version "0.29.2"

  on_arm do
    sha256 "c078d9ddf960ff5e345b2a5d9b04dec245d3e35e99a03473e47e64ef26d45fea"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.29.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "03ca029747a4fd52ce2c911aa9253e28d6ff6ed803aa6a1b6fc9526158b1c069"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.29.2/SlayZone-x64.dmg"
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