class RippyJev < Formula
  desc "rippy with optional Jev review of uncertain commands (network access)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.3"
  license "MIT"

  conflicts_with "rippy", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.3/rippy-jev-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "1002f919dc25aa949658b4a7724f01f3cc819f6a0f643b6d5c00227881077aec"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.3/rippy-jev-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "efff6913f7f8c3db6d5dfe0dd32c4f0f9bce28b85e28fc58dcf6ba096033f70e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.3/rippy-jev-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91c09e5723221d3ac507101487f4fbe756b9b633b83bdfb45198bd71d52597d5"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
