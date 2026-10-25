cask "hermes" do
  version "6.0.0"
  sha256 "a384755780e848206abbb0f060997475d6edbde03083b216f6d2c590623457dc"

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
