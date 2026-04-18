class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.41/tokf-v0.2.41-aarch64-apple-darwin.tar.gz"
      sha256 "b76f1aecae3cc7b7a577b6a95ac3d495349d99a5684ff276ccd5c5f2ba253028"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.41/tokf-v0.2.41-x86_64-apple-darwin.tar.gz"
      sha256 "fc037541a8052bd8a07f2a06a1d04444e206f1508578ee383f97c680fbffda8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.41/tokf-v0.2.41-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3582a930f4ebd6694e847d1fb510df4f53c9beafd7135df247b5549f941a6c34"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
