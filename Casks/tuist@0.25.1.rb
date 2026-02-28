cask "tuist" do
    version "0.25.1"
    sha256 "5831e032df4dd2a053d576438d827a54b415be3647e05213dda25b211e502be7"

    url "https://github.com/tuist/tuist/releases/download/app@0.25.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
