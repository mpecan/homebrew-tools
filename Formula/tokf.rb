class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.43/tokf-v0.2.43-aarch64-apple-darwin.tar.gz"
      sha256 "64602bde75c35e2148557c810eee05cab424a591c805757d5b546c8ac7d5f313"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.43/tokf-v0.2.43-x86_64-apple-darwin.tar.gz"
      sha256 "dd29be18a92884e381d17fba4410fe54bc1cdc362276e00c8d33965730596366"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.43/tokf-v0.2.43-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8fb5ae6664e997b2404dfdffc39b6db9171a5ea3d05f770406c60131c81987b"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
