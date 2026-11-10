cask "vpnautoreconnect" do
  version "1.1"
  sha256 "db77b372cf289e76f61256944797d08311c0bd7eecb07234488ac7aacef7674c"

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
