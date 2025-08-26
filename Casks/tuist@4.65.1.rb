cask "tuist" do
    version "4.65.1"
    sha256 "1e40489fa3599eb2a49b814971ff8ac401f52fcf41dc3bbb67c2f4e3f9ddfdcc"

    url "https://github.com/tuist/tuist/releases/download/app@4.65.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
