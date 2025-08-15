cask "tuist" do
    version "4.61.1"
    sha256 "1d5442df5bda8678842281fd7f180ea88f1ba51846d837d693b8cee7c3ec1df3"

    url "https://github.com/tuist/tuist/releases/download/app@4.61.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
