class KeyrateTui < Formula
  desc "Typing test in the terminal: one number, scored like every serious typing site"
  homepage "https://keyrate.jaybulb.com"
  url "https://github.com/nulljosh/labs/releases/download/keyrate-tui-v2.0.0/keyrate-tui-2.0.0-macos.tar.gz"
  sha256 "bd28e7dc1648275d313daf200d85b79f6136696bf508b95d152b6a73159f3b25"
  version "2.0.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "keyrate-tui"
  end

  test do
    assert_match "all checks passed", shell_output("#{bin}/keyrate-tui --check")
  end
end
