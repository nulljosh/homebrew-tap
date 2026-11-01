cask "cyllene" do
  version "10.9.0"
  sha256 "51279d0cd3d47780fe467fec851bf2e11fcb9df2445c67a6e9b6d26373022e24"

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
