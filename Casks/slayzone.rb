cask "slayzone" do
  version "0.32.2"

  on_arm do
    sha256 "0a3fb2b3d474060c82cfc2063287e5e5b1e452429ff09349c810368443183ac4"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.2/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "fbe09d3a42b10a6107bb92722f723fd836f497e1114e97b73d06f71a82965f03"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.32.2/SlayZone-x64.dmg"
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