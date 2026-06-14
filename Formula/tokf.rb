class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.46/tokf-v0.2.46-aarch64-apple-darwin.tar.gz"
      sha256 "26f0fcebe34c1662b0459b693c36a776f08615dc1dee7f5bf9462e15b47e1ff5"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.46/tokf-v0.2.46-x86_64-apple-darwin.tar.gz"
      sha256 "59e83711e16fd345e82017df6c74527d5fede085bb198556f5ec560699f48b65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.46/tokf-v0.2.46-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b0ad0aa9646a25f37feb9d1464c39df8e4d010824fa80515997e3327ecc9383"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
