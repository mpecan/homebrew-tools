class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.45/tokf-v0.2.45-aarch64-apple-darwin.tar.gz"
      sha256 "887eb2412d97c4416f0f3ac6f0f53df30cfd96d3ba2eb17065fbe1ee4653a7c8"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.45/tokf-v0.2.45-x86_64-apple-darwin.tar.gz"
      sha256 "f96eb790b4ff1e6f46adc3ffae94d134cafa3760f3c74a0fa06821a8155c2610"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.45/tokf-v0.2.45-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "203d761cf6917385f2e07ca8c88389789a3ed6279817dd60750965c12e7b79a0"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
