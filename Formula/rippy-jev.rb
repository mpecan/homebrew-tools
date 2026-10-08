class RippyJev < Formula
  desc "rippy with optional Jev review of uncertain commands (network access)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.4"
  license "MIT"

  conflicts_with "rippy", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.4/rippy-jev-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "90cd78052ec6dbd4f2d105b73bb9bbd981df96d4dfc0ab6ef6d8653e5cdd0f95"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.4/rippy-jev-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "15fc0c09c800365c06d8adf78a2105ec6b0a2dcac6d69640a9b72e6802f1e592"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.4/rippy-jev-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "355053893b5ceb34630b57b22c2be01898efe16b5e95a91474ceec84a642ea31"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
