cask "slayzone" do
  version "0.36.1"

  on_arm do
    sha256 "a46ffa3b4781ca9129be4710cdab69e2c026daadf03b5ad916718c591490b9bb"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "1b040b14642fcd5015ebf43ef00258d391445d200eea4bf38d347bdc2472f3a1"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.1/SlayZone-x64.dmg"
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