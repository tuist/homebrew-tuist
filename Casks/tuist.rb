cask "tuist" do
    version "0.36.0"
    sha256 "a20f83e1165855bfaf8c915f3b70bf3e5cf71bff2b8662440ec332f4dec78828"

    url "https://github.com/tuist/tuist/releases/download/app@0.36.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
