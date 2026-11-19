class Keyrate < Formula
  desc "Typing test in the terminal that shows which keys you miss"
  homepage "https://keyrate.jaybulb.com"
  url "https://github.com/nulljosh/keyrate/archive/refs/tags/v2.5.1.tar.gz"
  sha256 "2047c9479d2b5caaf6f88bac0768482baf319a3a0830ed0fce04a5a9ca3a5114"
  license "Apache-2.0"
  head "https://github.com/nulljosh/keyrate.git", branch: "main"

  # Built from source with Swift: the Xcode toolchain on macOS, swift on Linux.
  on_macos do
    depends_on xcode: ["15.0", :build]
  end
  on_linux do
    depends_on "swift" => :build
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--package-path", "tui"
    bin.install "tui/.build/release/keyrate-tui" => "keyrate"
  end

  test do
    assert_match "all checks passed", shell_output("#{bin}/keyrate --check")
  end
end
