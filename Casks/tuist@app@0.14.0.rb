cask "tuist" do
    version "app@0.14.0"
    sha256 "1e7fcc7289b18a45de2aeb61b7ae4423bd6315a67a9a9d4330ca35c1e9ef7889"

    url "https://github.com/tuist/tuist/releases/download/app@app@0.14.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
