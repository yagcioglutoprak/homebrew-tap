cask "dusty" do
  version "1.0.0"
  sha256 "7c74b22c638e69aec3d233d93fc0090edbcbd439075066ec8804690548d717e6"

  url "https://github.com/yagcioglutoprak/dusty/releases/download/v#{version}/Dusty-#{version}.dmg"
  name "Dusty"
  desc "Menu bar disk cleaner for macOS that frees space safely"
  homepage "https://github.com/yagcioglutoprak/dusty"

  depends_on macos: ">= :ventura"

  app "Dusty.app"

  zap trash: [
    "~/Library/Application Support/Dusty",
    "~/Library/Preferences/sh.toprak.dusty.plist",
  ]
end
