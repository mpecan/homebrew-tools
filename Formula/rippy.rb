class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.0/rippy-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "548c7dbeaf73538de0c046b129d9190d224d804eaeec1f796ed193b424d71699"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.0/rippy-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e995b34e07f4edcaf18feb7b4158e30426aed6a3420dbd0c20554cdf4d0b284b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.0/rippy-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "188574892e042d1c9b19cd6bbca13e15b1126c8d516580b9adf47f3eff47654f"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
