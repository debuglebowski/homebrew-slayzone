cask "slayzone" do
  version "0.26.1"

  on_arm do
    sha256 "cdc6010b20822550fadd3c83edc576800e0d4bb240dea61d774d8bbd197abc00"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.26.1/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "3d7e977eee04f4dd437c8fd7838c4b4fa5bc6ea51c1714abc4cfdb01d1cc5eca"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.26.1/SlayZone-x64.dmg"
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