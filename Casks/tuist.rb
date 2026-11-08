cask "tuist" do
    version "0.31.1"
    sha256 "c740aa9b62ea3827964c95a7c6f69c7018c919f21a23d90887a94e74053e0579"

    url "https://github.com/tuist/tuist/releases/download/app@0.31.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
