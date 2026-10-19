cask "mochi-cat" do
  version "1.0"
  sha256 "ed0d00f076d1dd6416a63f9c3ce04cbe7e431182074f4bb192da20cedc263870"

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

  # Mochi isn't notarized by Apple yet, so without this macOS refuses to open it the first time.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Mochi.app"]
  end

  uninstall quit: "dev.mochi.desktopcat"

  zap trash: "~/Library/Preferences/dev.mochi.desktopcat.plist"
end
