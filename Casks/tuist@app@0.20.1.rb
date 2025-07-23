cask "tuist" do
    version "app@0.20.1"
    sha256 "9c4971cac672b2eb6b204343bf300459bb06875a9292f85ef4203a7dd38989bc"

    url "https://github.com/tuist/tuist/releases/download/app@app@0.20.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
