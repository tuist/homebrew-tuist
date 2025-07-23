cask "tuist" do
    version "app@0.20.1"
    sha256 "02bcfcd11e1b1443baa47c72e4e1b2b510d6af09545c673e9a46f56c381218cc"

    url "https://github.com/tuist/tuist/releases/download/app@app@0.20.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
