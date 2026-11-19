cask "tuist" do
    version "0.37.0"
    sha256 "2a9ba92f4eae72b0e3cee91885cd3ebbcecd1f5a577f782d5cc226ae94193adc"

    url "https://github.com/tuist/tuist/releases/download/app@0.37.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
