class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.53/tokf-v0.2.53-aarch64-apple-darwin.tar.gz"
      sha256 "d1687b01a69e85221f598ef06bd224b49225846a2b76e87c20f47a08d58bbe8d"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.53/tokf-v0.2.53-x86_64-apple-darwin.tar.gz"
      sha256 "8f6193547d67ba3bd1b51a90ea4618b0282a32fa29fba1b70ebb2d8487d34b14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.53/tokf-v0.2.53-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65db22c562b03929f613f6474e4aea892ab5270dd43dd25ce5f1fe66eb5ca126"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
