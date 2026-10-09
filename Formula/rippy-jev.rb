class RippyJev < Formula
  desc "rippy with optional Jev review of uncertain commands (network access)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.5"
  license "MIT"

  conflicts_with "rippy", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.5/rippy-jev-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "5967026f5943d13a005560e6751e99d226bb4eb8d881cdfdccee945ed9131c5d"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.5/rippy-jev-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "88111b8f44e7d2dceb0c0f10f3d7a24ebf4e5531afbd7d2448403ba46953e19b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.5/rippy-jev-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2723f1db87369f47035a20a8f45472067085e8f3589cb1a9e3ca38c4f0405ce5"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
