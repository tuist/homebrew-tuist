cask "tuist" do
    version "0.22.7"
    sha256 "2657f6bd505c271fc6ec49fae9ef73febb38cb79ae04cf3fd9903d9272f67d21"

    url "https://github.com/tuist/tuist/releases/download/app@0.22.7/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
