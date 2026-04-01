cask "slayzone" do
  version "0.13.0"

  on_arm do
    sha256 "4b5563e004447fdb781430a7031e794a85fa490e4796c12c2b84a1c4fc33005d"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.13.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "3991c098ff1aaa15050f2543e7bb67fea66293754229498f8f2de15564dfedfe"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.13.0/SlayZone-x64.dmg"
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