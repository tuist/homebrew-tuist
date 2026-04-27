cask "tuist" do
    version "0.25.3"
    sha256 "4c0848a4fbcc2c60b0ead2f90b72e28c86634a5c364faf62a6a0c71474dbfc6c"

    url "https://github.com/tuist/tuist/releases/download/app@0.25.3/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
