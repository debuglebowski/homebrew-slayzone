cask "slayzone" do
  version "0.9.0"

  on_arm do
    sha256 "688fd1efbe976d33586f0415eda89388e503437d4d8d73d552832cc9da6428c4"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.9.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "8e008c5488d91c9d06bc4ac3fe0ac499c776f28ee8b49f5535e3330f24afbfb8"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.9.0/SlayZone-x64.dmg"
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