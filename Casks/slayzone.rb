cask "slayzone" do
  version "0.22.0"

  on_arm do
    sha256 "2f9b6e41cf5ec8d207270c97a6b46bc71844382ef4538b3f8a2311aa7847b80a"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.22.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "935d429e90e5d403e0d47663f01ebe6b9b619f2f8db0e4e2e088f7f6076f2119"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.22.0/SlayZone-x64.dmg"
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