cask "slayzone" do
  version "0.3.1"

  on_arm do
    sha256 "28bd5af03ecbdae71fd41c92dd98e2095f0753811abaf85509be8cb1f233dd65"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.3.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "65d5340f8f097699f2ee400c60bc442b2bbe5e5e00a1642dce0c180276c4b9ae"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.3.1/SlayZone-x64.dmg"
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