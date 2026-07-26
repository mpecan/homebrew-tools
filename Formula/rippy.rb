class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.1/rippy-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "9231a442b61c28654fe11839cba9adeae7b6af7bedf9bdd2926be732f2049ef0"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.1/rippy-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "b985811df69f2c6edce0b591ebb6e4d013c5ec585442aa888ad2e2a71b4e0301"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.1/rippy-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2406b772442041d3180e79c0c031359cd3d664f4fb6d1e484b1565fa9896dce8"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
