cask "vpnautoreconnect" do
  version "1.2"
  sha256 "0559d26283c883ea13ad9389dbff9bf9204d3c68d3cdb5a1e288a01cc709faac"

  url "https://github.com/cbrassel/vpnautoreconnect-releases/releases/download/v#{version}/VPNAutoReconnect-#{version}.zip"
  name "VPN Auto Reconnect"
  desc "Menu bar app that reconnects system VPNs after the Mac wakes up"
  homepage "https://github.com/cbrassel/vpnautoreconnect-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "VPNAutoReconnect.app"

  uninstall quit: "com.vpnautoreconnect.app"

  zap trash: [
    "~/Library/Preferences/com.vpnautoreconnect.app.plist",
    "~/Library/Saved Application State/com.vpnautoreconnect.app.savedState",
  ]
end
