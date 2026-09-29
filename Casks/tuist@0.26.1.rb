cask "tuist@0.26.1" do
    version "0.26.1"
    sha256 "d1dd97b895546c68099fbe48aa40df1a4dae3767d6f1b1f9504a381c9066dfb4"

    url "https://github.com/tuist/tuist/releases/download/app@0.26.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
