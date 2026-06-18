class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.48/tokf-v0.2.48-aarch64-apple-darwin.tar.gz"
      sha256 "55f7c3cd90c47a69b6b6be085ce469be35da510a05c1a112a714d7bfd67adfc9"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.48/tokf-v0.2.48-x86_64-apple-darwin.tar.gz"
      sha256 "ce544a7fe133b03db325b833fb6b843d98249606081b6df9ac9fd0bc590dec55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.48/tokf-v0.2.48-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "155dff72ca435ce862dec5ccdd874149b6ce294a4d7b85cd7766d4a00f3bb410"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
