cask "slayzone" do
  version "0.17.1"

  on_arm do
    sha256 "a99728c6b007be11b845a8083b4b4c8c7aaba791cce40bc53fd6840d7c7adc1f"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "24ed5d3e1f4e0b52cd395de6760fbe7c372c4eef69845c7d16e02718d3071817"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.1/SlayZone-x64.dmg"
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