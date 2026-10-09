cask "tuist@0.27.0" do
    version "0.27.0"
    sha256 "0e9c6587ae7cc58c795280a84a334a0ed240a1554242daac1e6c6a4583f53b06"

    url "https://github.com/tuist/tuist/releases/download/app@0.27.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
