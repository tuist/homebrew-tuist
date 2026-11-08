cask "tuist" do
    version "0.32.0"
    sha256 "de1bf22da47578159c70b99e0e708896c85376df24a06e19395d3e375a8cdffa"

    url "https://github.com/tuist/tuist/releases/download/app@0.32.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
