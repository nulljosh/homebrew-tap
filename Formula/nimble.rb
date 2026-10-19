class Nimble < Formula
  desc "One-sentence answers from the command line"
  homepage "https://nimble.jaybulb.com"
  url "https://github.com/nulljosh/nimble/archive/refs/tags/v9.9.0.tar.gz"
  sha256 "28d31510932de0ebc3fdd8be78a2770cf30fb3628e3ef5fe50d9f77673bf4ace"
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
