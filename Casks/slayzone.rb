cask "slayzone" do
  version "0.31.0"

  on_arm do
    sha256 "527f39b8ccf66d142029199530adac845a372f909f90d334244031f6cecc13fe"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.31.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "427e95fd5db3294a98b672fd8c2d2568fe783435022531c3c1c72aeb5874e91d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.31.0/SlayZone-x64.dmg"
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