cask "slayzone" do
  version "0.37.2"

  on_arm do
    sha256 "75fce4d4c2b6c53c119d6186abf74eae3db8469e53a2b0d268edc7180b21392d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.37.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "09be6786bb88b72f8fa94980f2f2e1c06a562a938ee6fa9fd008d80bbcfa85a6"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.37.2/SlayZone-x64.dmg"
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