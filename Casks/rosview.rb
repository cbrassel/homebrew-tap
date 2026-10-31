cask "rosview" do
  version "1.0"
  sha256 "5e70deabf4ce8f49753410fd2eab80d7cfb333e056dac2797f25a86da311969c"

  url "https://github.com/cbrassel/rosview-releases/releases/download/v#{version}/Rosview-#{version}.dmg"
  name "Rosview"
  desc "Monitor Linux servers over SSH with xosview-style bars"
  homepage "https://github.com/cbrassel/rosview-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Rosview.app"

  zap trash: [
    "~/Library/Application Support/Rosview",
    "~/Library/Preferences/net.brassel.rosview.plist",
    "~/Library/Saved Application State/net.brassel.rosview.savedState",
  ]
end
