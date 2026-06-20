class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.49/tokf-v0.2.49-aarch64-apple-darwin.tar.gz"
      sha256 "a9f4cfa3517e5e9c6e947e033edff47a6f37e6b5fc24088110cc05f8324e8185"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.49/tokf-v0.2.49-x86_64-apple-darwin.tar.gz"
      sha256 "89e72661171d8be856a4edac49505835b6b4e4bf45060f00ecdb42338ae5552e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.49/tokf-v0.2.49-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06813f3d26963adfc705ab6111e5c86fdf48b0ae583043e5851b51a35c7b6445"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
