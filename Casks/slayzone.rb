cask "slayzone" do
  version "0.5.0"

  on_arm do
    sha256 "8c79b33d8a2f30f81dcdf46d795bb5e4451741bd9b462a2a3f24adc097869302"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.5.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "382f8ddf6cd5b1f0881f53138563676a014aee37336ac5e27569407b80b41c2d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.5.0/SlayZone-x64.dmg"
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