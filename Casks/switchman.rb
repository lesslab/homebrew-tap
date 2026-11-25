cask "switchman" do
  version "1.8.1,1801"
  sha256 "65ccb81379d26d5a94bdb9db133c2a8fa51e3e9bc6cbcca4c516dfd01561ec44"

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
