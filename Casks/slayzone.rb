cask "slayzone" do
  version "0.7.0"

  on_arm do
    sha256 "989ec1288ba617bc2f056d0c9104444d096a6ab33ad1ef17b0c9d752d6cc8700"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.7.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "5e66816b23dc326c2bda8ae018b554ea5263f2a528a4132b242002b25d4b93d2"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.7.0/SlayZone-x64.dmg"
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