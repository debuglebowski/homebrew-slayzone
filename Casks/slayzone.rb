cask "slayzone" do
  version "0.42.0"

  on_arm do
    sha256 "c413556d7812d9f77fd9d83357d832c8ff8eeeb21dd6cb1d929fc249444279ed"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.42.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "57249891d61c6d5b0213cf1ff5870885cd844c92f841d845839096d1550f39f2"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.42.0/SlayZone-x64.dmg"
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