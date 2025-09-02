cask "tuist" do
    version "4.65.7"
    sha256 "2231a207002eb0407e102e31ee627be67b7be92a9815eb349915d6f07c16c13a"

    url "https://github.com/tuist/tuist/releases/download/app@4.65.7/Tuist.dmg"
    name "Tuist"
    desc "Tuist macOS app"
    homepage "https://github.com/tuist/tuist"

    auto_updates true
    conflicts_with formula: "tuist"

    app "Tuist.app"
end
