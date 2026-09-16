cask "switchman" do
  version "1.7.3,1703"
  sha256 "db8b9a48d1cb52aa4c16e32661feb93532b7d87016734e5d1fb0cf9c375d66de"

  url "https://dl.switchman.app/releases/Switchman-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Switchman"
  desc "Browser chooser and link router"
  homepage "https://switchman.app/"

  livecheck do
    url "https://dl.switchman.app/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Switchman.app"

  zap trash: [
    "~/Library/Application Support/org.lesslab.linkopener",
    "~/Library/Caches/org.lesslab.linkopener",
    "~/Library/Preferences/org.lesslab.linkopener.plist",
  ]
end
