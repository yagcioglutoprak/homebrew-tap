# Template cask. The release workflow substitutes 1.1.0 and 68196d53ed11d5821711831ac8028fb7be86eb9b9cf0e873650370c6f97872a7
# and commits the result to yagcioglutoprak/homebrew-tap as Casks/dusty.rb,
# so that `brew install --cask yagcioglutoprak/tap/dusty` works.
cask "dusty" do
  version "1.1.0"
  sha256 "68196d53ed11d5821711831ac8028fb7be86eb9b9cf0e873650370c6f97872a7"

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
