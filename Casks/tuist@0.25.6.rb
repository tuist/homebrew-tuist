cask "tuist" do
    version "0.25.6"
    sha256 "e3c0ce06560fa247e3b7617efe6c2446586771d6848a94cad0f265fa47bd9832"

    url "https://github.com/tuist/tuist/releases/download/app@0.25.6/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
