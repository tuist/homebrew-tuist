cask "tuist" do
    version "0.38.1"
    sha256 "efd21feb7da43d950ff7a442140b251ac31760a2db7b4345217a510e32b0e942"

    url "https://github.com/tuist/tuist/releases/download/app@0.38.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
