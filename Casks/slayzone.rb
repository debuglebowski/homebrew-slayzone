cask "slayzone" do
  version "0.33.0"

  on_arm do
    sha256 "3f97b5ec66bcf05f6c80b94c59e2a7ec6fde31202e8d311c282cc2e4d86a7327"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.33.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "5bf41292439ebc54aa48cbda70238f464ef039e1925db39b1e2c39066bd12652"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.33.0/SlayZone-x64.dmg"
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