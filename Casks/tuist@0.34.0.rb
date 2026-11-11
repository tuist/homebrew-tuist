cask "tuist@0.34.0" do
    version "0.34.0"
    sha256 "6296c01603281a89c969daad6b31853d670494a34eb784f6bf487c0533ee633f"

    url "https://github.com/tuist/tuist/releases/download/app@0.34.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
