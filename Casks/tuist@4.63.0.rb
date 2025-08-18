cask "tuist" do
    version "4.63.0"
    sha256 "f9680561ccd20c7d6234aae3a91f3d12da575e2a440bdcdc078a4ec6ed0a8575"

    url "https://github.com/tuist/tuist/releases/download/app@4.63.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
