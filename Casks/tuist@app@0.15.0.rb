cask "tuist" do
    version "app@0.15.0"
    sha256 "c36327d21fd7191c55a235db5129f3997df2e554ccf866a65a7ec8949ae2c9df"

    url "https://github.com/tuist/tuist/releases/download/app@app@0.15.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
