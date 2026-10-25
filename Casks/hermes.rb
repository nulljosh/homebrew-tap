cask "hermes" do
  version "8.0.0"
  sha256 "d81902b7cd30a5097206fe3f3235d510fe4b29632f3a608fa7ae10015e149801"

  url "https://github.com/nulljosh/hermes/releases/download/v#{version}/Hermes.dmg"
  name "Hermes"
  desc "Native Mac app for App Store Connect"
  homepage "https://hermes.jaybulb.com"

  depends_on macos: ">= :sonoma"
  depends_on formula: "asc"

  app "Hermes.app"

  zap trash: [
    "~/Library/Caches/com.nulljosh.hermes",
    "~/Library/Preferences/com.nulljosh.hermes.plist",
  ]
end
