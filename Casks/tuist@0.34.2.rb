cask "tuist@0.34.2" do
    version "0.34.2"
    sha256 "4edfad4753896205dac6a0fe78a81a7487d10772d39ddee7e49fb0dcd903b7a4"

    url "https://github.com/tuist/tuist/releases/download/app@0.34.2/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
