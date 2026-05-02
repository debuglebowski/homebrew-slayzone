cask "slayzone" do
  version "0.25.0"

  on_arm do
    sha256 "60e49543351dc423ba900c3b6505a10ebc95566ba964b4dd24312027941d3c7d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.25.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "df531b47464dedbdf492bd6ca699fe901a9ec473c1448653c39161093a6a9495"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.25.0/SlayZone-x64.dmg"
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