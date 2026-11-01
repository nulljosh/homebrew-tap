cask "cyllene" do
  version "10.9.1"
  sha256 "046bcb95c395e8b8bd9cda3a2ac9a6b6d4fae963d0c08bd0eeca464581ecfec4"

  url "https://github.com/nulljosh/cyllene/releases/download/v#{version}/Cyllene.dmg"
  name "Cyllene"
  desc "Native Mac app for App Store Connect"
  homepage "https://cyllene.jaybulb.com"

  depends_on macos: ">= :sonoma"
  depends_on formula: "asc"

  app "Cyllene.app"

  zap trash: [
    "~/Library/Caches/com.nulljosh.hermes",
    "~/Library/Preferences/com.nulljosh.hermes.plist",
  ]
end
