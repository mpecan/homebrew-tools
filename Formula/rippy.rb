class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.1.2/rippy-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "463faf12bd257b747db38a721bb645e48eec1d440dc8cda543731c9b613c1536"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.1.2/rippy-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "ad2e851a4a066e3e06f7d41d7138fa57556c7506b264447a5771fb90581bb342"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.1.2/rippy-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "410302f5120afb0073de7fc3d15d250343b049a8d6b14ec2994396bebc5031c1"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
