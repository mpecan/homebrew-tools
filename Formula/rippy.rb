class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.1.3/rippy-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "ab03c73e2d55924175d59144504115d85bf147494901987ed32ac42dd7053183"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.1.3/rippy-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "ad461cd3ef84d766d06b41b524700a2110e74e92415243ef07da4ff112a30c92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.1.3/rippy-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b91b70f2ffe5ab6a0a7311cd97c1da1e1b1bf1275e1a4aa3ec980152260ac797"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
