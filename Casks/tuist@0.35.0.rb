cask "tuist@0.35.0" do
    version "0.35.0"
    sha256 "9728fe7e54efcd73b2194bffdea5546c3d7067d8702ae848deb0e7664f963792"

    url "https://github.com/tuist/tuist/releases/download/app@0.35.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
