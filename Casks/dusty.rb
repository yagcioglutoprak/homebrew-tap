# Cask for Dusty, the open menu bar disk and memory cleaner.
# Bumped on each release of yagcioglutoprak/dusty.
cask "dusty" do
  version "2.1.0"
  sha256 "4596b1c1c26232f270eb22fface2040c57d10a7dc4ffc8580e6f3dac8884ea49"

  url "https://github.com/yagcioglutoprak/dusty/releases/download/v#{version}/Dusty-#{version}.dmg"
  name "Dusty"
  desc "Menu bar cleaner that safely frees disk space and memory"
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
