cask "slayzone" do
  version "0.17.3"

  on_arm do
    sha256 "2bb9975e0911aab0af3194150c543b2adec88edc803f77a3cc9bba0f749d3831"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.3/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "4a85cb03a7975c21e0b5516f1840e2f986a1d615c996b8627075e68cbfb173ab"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.17.3/SlayZone-x64.dmg"
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