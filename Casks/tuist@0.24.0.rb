cask "tuist" do
    version "0.24.0"
    sha256 "c4c7c938548f8303ec5ea1d2e4c7b271e96586c8daec92ceeb0eff9637e9ea64"

    url "https://github.com/tuist/tuist/releases/download/app@0.24.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
