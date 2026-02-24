cask "tuist" do
    version "0.25.0"
    sha256 "554649c1444474726b75933113b06ed6fd11c23baf24fb7f48a268ec7ae27b76"

    url "https://github.com/tuist/tuist/releases/download/app@0.25.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
