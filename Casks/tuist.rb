cask "tuist" do
    version "0.31.0"
    sha256 "d9624ba0b9266d925a3602e8625925853c71f09f686331d6f66dc7a9af5f107d"

    url "https://github.com/tuist/tuist/releases/download/app@0.31.0/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true

    app "Tuist.app"
end
