class Nimble < Formula
  desc "One-sentence answers from the command line"
  homepage "https://nimble.jaybulb.com"
  url "https://github.com/nulljosh/nimble/archive/refs/tags/v9.10.0.tar.gz"
  sha256 "2ed4e51a986de4f8fb22becc7715fa48d6771b226b0de5a4cd6c6d7c0c31f2e1"
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
