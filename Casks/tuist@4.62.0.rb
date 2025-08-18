cask "tuist" do
    version "4.62.0"
    sha256 "a7631b654278065cb8dc497ba322695daddc2fab9891480ae19aeed47f87bcb5"

    url "https://github.com/tuist/tuist/releases/download/app@4.62.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
