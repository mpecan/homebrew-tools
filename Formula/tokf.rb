class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.40/tokf-v0.2.40-aarch64-apple-darwin.tar.gz"
      sha256 "d1d6460d5b029fe316f560d95b6d9aeacc83ffc2508d564c51085b64fbc7f6ec"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.40/tokf-v0.2.40-x86_64-apple-darwin.tar.gz"
      sha256 "2e593e4a858abac0344fe6fcdd42197d80034d39e9645a3d1a2f34576c01eb3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.40/tokf-v0.2.40-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d30d2f92002663c2d4c85f50dffc92fd34c3eeced67781f01122d83f9732638"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
