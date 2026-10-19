cask "lighttrail" do
  version "1.0.1"
  sha256 "d1c8cdfcedda3e31773c7ae92fac94592731f897ea3c24b695bc4e53a5be4eaa"

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
