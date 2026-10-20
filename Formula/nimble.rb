class Nimble < Formula
  desc "One-sentence answers from the command line"
  homepage "https://nimble.jaybulb.com"
  url "https://github.com/nulljosh/nimble/archive/refs/tags/v10.0.0.tar.gz"
  sha256 "ab33c351da59f3485038d57edcdda2e5acd01e21d4a9dd7edb6e605c2bc3b759"
  license "MIT"

  depends_on "node"

  def install
    (libexec/"docs").install "docs/engine.js"
    libexec.install "bin"
    bin.install_symlink libexec/"bin/nimble.js" => "nimble"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/nimble 2>&1", 2)
  end
end
