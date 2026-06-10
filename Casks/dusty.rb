# Cask for Dusty, the open menu bar disk cleaner.
# Bumped on each release of yagcioglutoprak/dusty.
cask "dusty" do
  version "1.5.0"
  sha256 "2acbe24d78ecf8d560e34e62fd2d5b62b229eaee5d70c58389f5f68d08921e7f"

  url "https://github.com/yagcioglutoprak/dusty/releases/download/v#{version}/Dusty-#{version}.dmg"
  name "Dusty"
  desc "Menu bar disk cleaner for macOS that frees space safely"
  homepage "https://github.com/yagcioglutoprak/dusty"

  # Dusty updates itself via Sparkle, so Homebrew should not treat a self-updated
  # build as outdated.
  auto_updates true

  depends_on macos: ">= :ventura"

  app "Dusty.app"
  # The dusty CLI ships inside the app bundle (Contents/Helpers, not MacOS:
  # a case-insensitive filesystem would collide "dusty" with "Dusty" there).
  binary "#{appdir}/Dusty.app/Contents/Helpers/dusty"

  zap trash: [
    "~/Library/Application Support/Dusty",
    "~/Library/Preferences/sh.toprak.dusty.plist",
  ]
end
