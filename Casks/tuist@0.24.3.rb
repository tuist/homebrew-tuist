cask "tuist" do
    version "0.24.3"
    sha256 "286d393d48718a0214577f158639dcbdf8dc48ff819ecf9ea6d882fb0deebf5d"

    url "https://github.com/tuist/tuist/releases/download/app@0.24.3/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
