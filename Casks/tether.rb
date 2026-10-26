cask "tether" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "fe50b01ebe7fd116466608c7bd0a9dd3987767fa5c0a46d7bd96aa513e2a0ce7",
         intel: "6fb9b53df1c2896f086e9be1ce4690731c878c507076a10068b5fd315152b935"

  url "https://github.com/kewldan/tether/releases/download/v#{version}/Tether_#{version}_#{arch}.dmg"
  name "Tether"
  desc "Desktop GUI for Android Debug Bridge"
  homepage "https://github.com/kewldan/tether"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Tether.app"

  zap trash: [
    "~/Library/Application Support/dev.kewldan.tether",
    "~/Library/Caches/dev.kewldan.tether",
    "~/Library/Preferences/dev.kewldan.tether.plist",
    "~/Library/Saved Application State/dev.kewldan.tether.savedState",
    "~/Library/WebKit/dev.kewldan.tether",
  ]
end
