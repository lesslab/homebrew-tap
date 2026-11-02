cask "switchman" do
  version "1.7.6,1706"
  sha256 "20bfa4510fba7d9befb146512b4a68c71372fdf12395d9758b816058e7e1992a"

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
