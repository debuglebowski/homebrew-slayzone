cask "slayzone" do
  version "0.8.0"

  on_arm do
    sha256 "9b22d0e7f2baa0336c29e414df732d1779a87b5a062cde7db2d09e46ccdce6e4"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.8.0/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "83fab181259498a8828b5db32caf5dc705057ef358a5eb382d3091065da84c46"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.8.0/SlayZone-x64.dmg"
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