# cbrassel/tap

Homebrew casks for my macOS apps.

```sh
brew tap cbrassel/tap
brew trust cbrassel/tap   # Homebrew 7 and later
brew install --cask rosview
brew install --cask vpnautoreconnect
```

| Cask | Description |
|---|---|
| [rosview](Casks/rosview.rb) | Monitor Linux servers over SSH with xosview-style bars |
| [vpnautoreconnect](Casks/vpnautoreconnect.rb) | Menu bar app that reconnects system VPNs after the Mac wakes up |
