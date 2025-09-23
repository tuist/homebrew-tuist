cask "tuist" do
    version "0.21.0"
    sha256 "5d9a40d96ea9003f4202715ab80f7a17069a19cf90e4de83762d4c224d60d3bb"

    url "https://github.com/tuist/tuist/releases/download/app@0.21.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
