class Nimble < Formula
  desc "One-sentence answers from the command line"
  homepage "https://nimble.jaybulb.com"
  url "https://github.com/nulljosh/nimble/archive/refs/tags/v9.7.1.tar.gz"
  sha256 "fc36e561eb9b67bb40a82049797547dd5c996a81f0c4617d95f9258530e84c38"
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
