cask "tuist" do
    version "0.24.1"
    sha256 "9c6b705f7cf57de3b9ce93c0c0484c6bf5595f60d8db4349898371ac63b4baa5"

    url "https://github.com/tuist/tuist/releases/download/app@0.24.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
