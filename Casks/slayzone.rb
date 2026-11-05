cask "slayzone" do
  version "0.38.0"

  on_arm do
    sha256 "420df60221c8a352ccc08418c3d37e6a2ee08239d031cee5407038c169669c36"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.38.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "f6ec61327043f6483c69393eb4b24c3f9963cb43001ae5fbe3967ef53084a11c"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.38.0/SlayZone-x64.dmg"
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