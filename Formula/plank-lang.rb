class PlankLang < Formula
  desc "Compiled language you can read in an evening: one Python file on LLVM"
  homepage "https://plank.heyitsmejosh.com"
  url "https://github.com/nulljosh/plank/archive/refs/tags/v4.7.0.tar.gz"
  sha256 "67752a33ba2c75f463a15d00f6665bc5b2c8fde1811b84bc4b9b437d91b47a8b"
  license "MIT"

  depends_on "uv"

  conflicts_with "plank", because: "both install a plank binary; this one is the language"

  def install
    bin.install "plank.py" => "plank"
  end

  test do
    (testpath/"hi.pk").write "fn main() {\n  print(\"hi\")\n}\n"
    assert_equal "hi\n", shell_output("#{bin}/plank run #{testpath}/hi.pk")
  end
end
