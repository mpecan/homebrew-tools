class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.5"
  license "MIT"

  conflicts_with "rippy-jev", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.5/rippy-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "6df30888f1f408916b190df0723fde5e977ea399a08b7731068ec7fa3b6e421b"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.5/rippy-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "16722f9e216d9a0719f3db5102661afabc07cca2a3076365e396f0f90502abc5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.5/rippy-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b16b652aa16a11e0a3d1f6b6b5858358d79e1c64ca5f089f6a21dd518d137a0"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
