cask "slayzone" do
  version "0.36.3"

  on_arm do
    sha256 "8e8f9da23ef230e80682d635323c24e1db0a365083e12e3abc198d2d3f4a0213"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.3/SlayZone-arm64.dmg"
  end

  on_intel do
    sha256 "141956f6be5db4bbe112bcc95ce6b4694128855dbb903d9031691ce451626feb"
    url "https://github.com/debuglebowski/slayzone/releases/download/v0.36.3/SlayZone-x64.dmg"
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