cask "vpnautoreconnect" do
  version "1.3"
  sha256 "fc347e8e9a05d6af8f6115d0153071f71599ff19604fa40be51e3da58d38ae01"

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
