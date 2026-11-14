cask "tuist@0.34.1" do
    version "0.34.1"
    sha256 "90ab6bfb932058ce3cb64b8d2d63cf514a7072b66e72906e502dff19b235fdb3"

    url "https://github.com/tuist/tuist/releases/download/app@0.34.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
