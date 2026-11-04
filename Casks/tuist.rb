cask "tuist" do
    version "0.28.0"
    sha256 "e37e09bc4667aef86c9c381fbed1385b009fcf424272d28ce05155c5d6665ccc"

    url "https://github.com/tuist/tuist/releases/download/app@0.28.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
