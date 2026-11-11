cask "slayzone" do
  version "0.39.0"

  on_arm do
    sha256 "cf1e54511a689485b5bbb7191ba01873153fa8bfbfbb849eac50ad4c4bd55ffe"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.39.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "fb81a57a270570bdfd72203863edb37efe5d3e511637e1474148ed70fe087663"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.39.0/SlayZone-x64.dmg"
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