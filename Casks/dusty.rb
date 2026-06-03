# Template cask. The release workflow substitutes 1.2.0 and 8fff9bd291dccf93bf892bd7550bc4786c9fba4703190850d82e5f3717fd161c
# and commits the result to yagcioglutoprak/homebrew-tap as Casks/dusty.rb,
# so that `brew install --cask yagcioglutoprak/tap/dusty` works.
cask "dusty" do
  version "1.2.0"
  sha256 "8fff9bd291dccf93bf892bd7550bc4786c9fba4703190850d82e5f3717fd161c"

  url "https://github.com/yagcioglutoprak/dusty/releases/download/v#{version}/Dusty-#{version}.dmg"
  name "Dusty"
  desc "Menu bar disk cleaner for macOS that frees space safely"
  homepage "https://github.com/yagcioglutoprak/dusty"

  # Dusty updates itself via Sparkle, so Homebrew should not treat a self-updated
  # build as outdated.
  auto_updates true

  depends_on macos: ">= :ventura"

  app "Dusty.app"

  zap trash: [
    "~/Library/Application Support/Dusty",
    "~/Library/Preferences/sh.toprak.dusty.plist",
  ]
end
