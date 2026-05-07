cask "slayzone" do
  version "0.28.1"

  on_arm do
    sha256 "d8ffda2b6235cfefd651e70e491a7b05e4f0a4007cc84379f0533be143f85da8"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.28.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "8e1aeeecd8c807287a18cc4116c201cb61d68314aab2a6dcdca71b574ea2a955"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.28.1/SlayZone-x64.dmg"
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