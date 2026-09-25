cask "tuist@0.26.0" do
    version "0.26.0"
    sha256 "24d83b3fd4ab78580a60398939639c575167e8e1f8b932b1658d01c5bfe0df19"

    url "https://github.com/tuist/tuist/releases/download/app@0.26.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
