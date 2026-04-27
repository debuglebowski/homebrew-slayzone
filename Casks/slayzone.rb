cask "slayzone" do
  version "0.23.2"

  on_arm do
    sha256 "01ea106164387a969d9680fe9d621f9675e8988a26ca91211258223866ba6dcc"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.23.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "d1d0adaafcac1b623ef04a44ae1b73f030866df7594125dff66d4780ff27c109"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.23.2/SlayZone-x64.dmg"
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