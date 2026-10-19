cask "light-key" do
  version "1.0.1"
  sha256 "c9f622033913317463bafdb0ce2337c613bb517d19ffe4d2afbc697bceeeb946"

  url "https://github.com/Mrkh97/light-key/releases/download/v#{version}/LightKey.zip"
  name "Light Key"
  desc "Lightning bolt strikes every character you type"
  homepage "https://github.com/Mrkh97/light-key"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Light Key.app"

  uninstall quit: "dev.lightkey.app"

  zap trash: [
    "~/Library/Logs/LightKey.log",
    "~/Library/Preferences/dev.lightkey.app.plist",
  ]
end
