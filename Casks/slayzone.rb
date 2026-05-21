cask "slayzone" do
  version "0.32.0"

  on_arm do
    sha256 "15dcd860bf2e524cfb4396634186f35cea7c7ae906598ff9360b6bcc5e6c2318"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "0ccd3c9bc41d51a39bc208d31ee83a3e6b4fcbd333fb802409faa868ee24e0a3"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.0/SlayZone-x64.dmg"
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