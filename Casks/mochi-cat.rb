cask "mochi-cat" do
  version "1.0.1"
  sha256 "817aa6ea89d1a1bbccef1f0ddb4eb618bff97e60badb7ced41b4ebe41a285e8a"

  url "https://github.com/Mrkh97/mochi/releases/download/v#{version}/Mochi.zip"
  name "Mochi"
  desc "Cat that lives on your desktop and walks on your windows"
  homepage "https://github.com/Mrkh97/mochi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Mochi.app"

  uninstall quit: "dev.mochi.desktopcat"

  zap trash: "~/Library/Preferences/dev.mochi.desktopcat.plist"
end
