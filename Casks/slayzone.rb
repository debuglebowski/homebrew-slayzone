cask "slayzone" do
  version "0.21.0"

  on_arm do
    sha256 "400494b1beb18f127d8028ac7f22633a134c5a53a15eff602592d81a69e4edb6"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.21.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "2829ea68265c0e386efae09f5f72c50c914dad5adcaebd48032a5ab606328600"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.21.0/SlayZone-x64.dmg"
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