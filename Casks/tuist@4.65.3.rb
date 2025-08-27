cask "tuist" do
    version "4.65.3"
    sha256 "eab30b8b6a1dc05e5daa8622eb99533ab2d287680fa202cc7500d4a0fa83e9dd"

    url "https://github.com/tuist/tuist/releases/download/app@4.65.3/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
