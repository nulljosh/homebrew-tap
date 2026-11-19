class Keyrate < Formula
  desc "Typing test in the terminal that shows which keys you miss"
  homepage "https://keyrate.jaybulb.com"
  url "https://github.com/nulljosh/keyrate/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "8be90818f3a9fc80b3ac6701769af64047a5df6952a01da72531598ca275982c"
  license "Apache-2.0"
  head "https://github.com/nulljosh/keyrate.git", branch: "main"

  # Built from source with Swift: the Xcode toolchain on macOS, swift on Linux.
  on_macos do
    depends_on xcode: ["15.0", :build]
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--package-path", "tui"
    bin.install "tui/.build/release/keyrate-tui" => "keyrate"
  end

  test do
    assert_match "all checks passed", shell_output("#{bin}/keyrate --check")
  end
end
