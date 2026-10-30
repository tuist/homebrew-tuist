cask "tuist" do
    version "0.27.2"
    sha256 "b0df58131daaf5f88cb74a68121a1774491387eca71079be3845a0b5fbedd73a"

    url "https://github.com/tuist/tuist/releases/download/app@0.27.2/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
