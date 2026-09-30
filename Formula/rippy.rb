class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.3"
  license "MIT"

  conflicts_with "rippy-jev", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.3/rippy-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "1c627e6e78d0e43e223f1891249061ddf94297b481a48b8e8cc487871aa9e8de"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.3/rippy-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "b9b9c67412fa06c70a1d8c88530fb5fe5a5d209381b40667f34fcdb9efc04492"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.3/rippy-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e8f95c942e119e505c3a77dead7e5fa0c037b6d0f5b3533bbe33bdbcf2e3a6b"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
