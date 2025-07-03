cask "tuist" do
    version "app@0.13.1"
    sha256 "9cd5224be9e49c24292e03c51059e498d1ff6a5679666061e99fd9c80e2c141d"

    url "https://github.com/tuist/tuist/releases/download/app@app@0.13.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
