cask "tuist" do
    version "0.23.0"
    sha256 "90c9825a780e701bdc8106a10598f1c665afac7afaae182b04f5e735da334296"

    url "https://github.com/tuist/tuist/releases/download/app@0.23.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
