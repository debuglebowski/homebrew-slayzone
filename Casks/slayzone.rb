cask "slayzone" do
  version "0.12.0"

  on_arm do
    sha256 "6d150483cde2294b88a86ecfc9e1c52984bc04b10377d1cce99fa69b2cece9be"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.12.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "18eb7c10d6704e20dc17f19d80c89e665b227d068ffad135c6ac7eb4a6184e49"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.12.0/SlayZone-x64.dmg"
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