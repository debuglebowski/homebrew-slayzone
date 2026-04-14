cask "slayzone" do
  version "0.19.0"

  on_arm do
    sha256 "154d55eeb033ac443075956b9df82811e162a6cef73c364923beacb1a5b7b7fb"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.19.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "46be47035a1d06a20f5f18bb4ce6ff20baacea54c212c45a5260dcfd204c0368"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.19.0/SlayZone-x64.dmg"
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