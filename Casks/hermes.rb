cask "hermes" do
  version "7.0.0"
  sha256 "0bf0b18729ffa70cca3058284abd9d9bba585daadc0e963552e60fc53f9d07a0"

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
