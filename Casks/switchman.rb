cask "switchman" do
  version "1.7.8,1708"
  sha256 "418102f9b1bbdd9ea0384d92da5b8bb3f2b43d41af10f4d697718fae82b307b4"

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
