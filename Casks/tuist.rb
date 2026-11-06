cask "tuist" do
    version "0.29.0"
    sha256 "415599bbe7c5c0fcad66decb8903a80130596a242e00ff7428d12ff8693800e1"

    url "https://github.com/tuist/tuist/releases/download/app@0.29.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
