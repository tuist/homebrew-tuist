cask "tuist" do
    version "0.25.5"
    sha256 "8df7e8778aeed368af21c7dc48bc3870acc8abecb8e73991b7e88f3745b98420"

    url "https://github.com/tuist/tuist/releases/download/app@0.25.5/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
