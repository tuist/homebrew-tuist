cask "tuist" do
    version "0.27.1"
    sha256 "0fff574d540e4ade45ed780bf636c938badcaef9997957f79b14a9374df4670e"

    url "https://github.com/tuist/tuist/releases/download/app@0.27.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
