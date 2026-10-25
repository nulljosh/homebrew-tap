cask "hermes" do
  version "9.0.0"
  sha256 "40a21a1dc7a8edc41302ef634e51b47f3444ce6e4f848bd253c0ee361191381b"

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
