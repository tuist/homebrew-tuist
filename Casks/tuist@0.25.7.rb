cask "tuist@0.25.7" do
    version "0.25.7"
    sha256 "b44b2578679bb0b03b956dd6a64e785cc050e54f350fb2b114e9e85bc61b9ee9"

    url "https://github.com/tuist/tuist/releases/download/app@0.25.7/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
