cask "slayzone" do
  version "0.17.0"

  on_arm do
    sha256 "3d586d9e3bd31ba1c949ca550b1d62bd41db715c503017388b3f899816b14bd7"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "bb3c712f683aac5e05d6c450e4ee306d776bbcb61d675461977ca9047fb77e68"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.0/SlayZone-x64.dmg"
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