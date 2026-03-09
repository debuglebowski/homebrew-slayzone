cask "slayzone" do
  version "0.3.0"

  on_arm do
    sha256 "96d1182ddb7fd2191090838b748b4f804ca5366adb66b0d721eaf009939562c9"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.3.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "9179375a57c279d1a4aae994dd4ec68c1bc2326877b45ee1ab0e71d2b447d9ca"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.3.0/SlayZone-x64.dmg"
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