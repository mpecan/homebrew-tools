class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.42/tokf-v0.2.42-aarch64-apple-darwin.tar.gz"
      sha256 "ec1fe30593d4e1f9074ba54e57947b7a9956c91ae37fe5aadd26492ad22f555c"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.42/tokf-v0.2.42-x86_64-apple-darwin.tar.gz"
      sha256 "403361fb1f36fe985d1a54033bcb75965b212767bac778a9edc6247901f34a0e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.42/tokf-v0.2.42-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f22f456b78f7b22fdbe967bfb7b2dc33c8587e6e00fa6f30de72746ba3f53f3"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
