cask "switchman" do
  version "1.7.9,1709"
  sha256 "484b3b16fef9dd938f162e6733068ba2f5e11e8214fa0fe1c20d10ce63eefd6e"

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
