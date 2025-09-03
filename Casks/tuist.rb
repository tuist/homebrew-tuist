cask "tuist" do
    version "0.20.2"
    sha256 "cb9c8a7291859e3b39e8f68792ebc7e800b4dda090ab617b4a7f22a822042ada"

    url "https://github.com/tuist/tuist/releases/download/app@0.20.2/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
