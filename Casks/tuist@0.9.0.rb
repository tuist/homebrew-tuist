cask "tuist@0.9.0" do
    version "0.9.0"
    sha256 "068bd7cdf3193590aaf560b2e403701b6f6f75f5537df9b67344c0ad0c9c7be9"

    url "https://github.com/tuist/tuist/releases/download/app@0.9.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
