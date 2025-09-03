cask "tuist" do
    version "4.66.0"
    sha256 "9ef6637a35d4fec5743fc616c948a10af0318cafaafeac492cf71f3937bc76e6"

    url "https://github.com/tuist/tuist/releases/download/app@4.66.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
