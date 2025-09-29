cask "tuist" do
    version "0.22.6"
    sha256 "ef364d6affaae66dea6c5f3d288e2704f17804b0f5d4a697bdd5a12cb034d76a"

    url "https://github.com/tuist/tuist/releases/download/app@0.22.6/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
