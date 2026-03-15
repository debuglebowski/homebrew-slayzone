cask "slayzone" do
  version "0.4.0"

  on_arm do
    sha256 "6623917d9c13e6dd3b47e42d12313fab91fac7a8596e497d0f215bbeda4be21d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.4.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "8929aa788abfbe4f6af13569effc45302d140cda3f78ee896e036ea947314b01"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.4.0/SlayZone-x64.dmg"
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