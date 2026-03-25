class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.37/tokf-v0.2.37-aarch64-apple-darwin.tar.gz"
      sha256 "629f4f92e325cc6f4052b0a13d0fe11ed11d8aec1698def4a298fa11590e76ea"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.37/tokf-v0.2.37-x86_64-apple-darwin.tar.gz"
      sha256 "f5cb80233fd99de5f628ff85f662f25e98df02b26ee488fdad0edb541088e417"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.37/tokf-v0.2.37-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a92755c68cc4b7fc107c56404cd16f83e9b7672c813c0fbdeb72e64979c85e29"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
