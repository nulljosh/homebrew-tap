class Nimble < Formula
  desc "One-sentence answers from the command line"
  homepage "https://nimble.jaybulb.com"
  url "https://github.com/nulljosh/nimble/archive/refs/tags/v9.8.0.tar.gz"
  sha256 "fbccbf624c82e1aa808909aa8774c865d370a96d01151f858cee5c01d69ba1e5"
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
