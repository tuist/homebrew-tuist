cask "tuist" do
    version "0.30.0"
    sha256 "7d81ce7039b2e26eb4f74aa912905619a5cae10b3713b6bdc07b237f306d624d"

    url "https://github.com/tuist/tuist/releases/download/app@0.30.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
