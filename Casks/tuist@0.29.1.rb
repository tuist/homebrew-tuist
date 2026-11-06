cask "tuist@0.29.1" do
    version "0.29.1"
    sha256 "77c2220a5dde11e90bcc424949dc608c2e9296477b8b8f9882f813416306b6fd"

    url "https://github.com/tuist/tuist/releases/download/app@0.29.1/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
