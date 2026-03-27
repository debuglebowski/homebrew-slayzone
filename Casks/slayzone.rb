cask "slayzone" do
  version "0.11.0"

  on_arm do
    sha256 "44408d0e00f60bbcce71f67538289d75e1284212e8971923df5a72cf596ba600"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.11.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "bd8927b6f9b67730e406d0a646a03bc0e5058c9f442bb59b6dcd7511ff330d56"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.11.0/SlayZone-x64.dmg"
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