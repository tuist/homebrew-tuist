cask "tuist" do
    version "app@0.17.0"
    sha256 "9bff9bdab34e12efca089d55aa617de14086c1cfa30d27dca012fa68af491df7"

    url "https://github.com/tuist/tuist/releases/download/app@app@0.17.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
