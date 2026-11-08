cask "tuist" do
    version "0.32.1"
    sha256 "80fef264543648e390a31c96ae98245559e8d999847855124451e8f2b1c64195"

    url "https://github.com/tuist/tuist/releases/download/app@0.32.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
