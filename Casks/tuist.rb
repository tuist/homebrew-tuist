cask "tuist" do
    version "0.33.0"
    sha256 "77d6aa92b3edcdf30b4241d692a4e3e5a09b3a96f92ee8c9e3ecdd3223fd4f5a"

    url "https://github.com/tuist/tuist/releases/download/app@0.33.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
