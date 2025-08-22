cask "tuist" do
    version "4.64.2"
    sha256 "c7d0cb8e1b9d775d70d045c632688cdf4bcd12cd0b7b2f740b2f6bf17e52753a"

    url "https://github.com/tuist/tuist/releases/download/app@4.64.2/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
