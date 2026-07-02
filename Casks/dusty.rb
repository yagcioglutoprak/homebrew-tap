# Cask for Dusty, the open menu bar disk cleaner.
# Bumped on each release of yagcioglutoprak/dusty.
cask "dusty" do
  version "1.6.0"
  sha256 "efe535b768ca19ec9c41706fc229a902a49139293921337a77d1651dce3b2f7d"

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
