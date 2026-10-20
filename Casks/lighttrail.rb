cask "lighttrail" do
  version "1.1.0"
  sha256 "73341077690e8ab1c3e174f92ee75f95e908790f2888bafec6b5d72f7704c4a1"

  url "https://github.com/Mrkh97/light-trail/releases/download/v#{version}/LightTrail.zip"
  name "LightTrail"
  desc "Lightning trail that follows the mouse pointer"
  homepage "https://github.com/Mrkh97/light-trail"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "LightTrail.app"

  uninstall quit: "dev.lighttrail.app"

  zap trash: "~/Library/Preferences/dev.lighttrail.app.plist"
end
