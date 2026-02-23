cask "tuist" do
    version "0.24.2"
    sha256 "3065119e16959a39026a6ba7e8261ae00725167fc98c2834b4b62ae7d42ed2c5"

    url "https://github.com/tuist/tuist/releases/download/app@0.24.2/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
