cask "tether" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "8468496476596b50439ccc0f05d678b61d0e47b670728fb1c4094be99f74c92e",
         intel: "511ab189bb9ce7843c60a303b4637e9a974c04cd1e4ebbce72f63b668125a9e1"

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
