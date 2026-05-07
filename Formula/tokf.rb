class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.44/tokf-v0.2.44-aarch64-apple-darwin.tar.gz"
      sha256 "8309667227822cbc3fdce34abd85ae4b5d7df383f9c20cbf1e1d0e33126ea29e"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.44/tokf-v0.2.44-x86_64-apple-darwin.tar.gz"
      sha256 "f9c1e80faed4be8544841f9caab911ae3f028988a4689e7d0e55af33c86f729a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.44/tokf-v0.2.44-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a33b4f02779f908937ad7eab9505009d72fe09398b7c2b14b1598df426f0d09"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
