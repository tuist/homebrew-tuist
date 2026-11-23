cask "tuist@0.38.0" do
    version "0.38.0"
    sha256 "f8f1cece392fb013524fe66973a57a102ad29d452c70caf0298d5152be5d575c"

    url "https://github.com/tuist/tuist/releases/download/app@0.38.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
