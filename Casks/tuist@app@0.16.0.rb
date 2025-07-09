cask "tuist" do
    version "app@0.16.0"
    sha256 "bcdf553c4eec204d4b760813853ef88c613eb258c15839943f49ae4eb48c4aaa"

    url "https://github.com/tuist/tuist/releases/download/app@app@0.16.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
