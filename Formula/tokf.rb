class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.54/tokf-v0.2.54-aarch64-apple-darwin.tar.gz"
      sha256 "17b1118e726de0adafc2534fce10b36e157db9ba037eee59e29c2fd26df433d9"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.54/tokf-v0.2.54-x86_64-apple-darwin.tar.gz"
      sha256 "09eb422adcb4c467c6b510b98131187e1cd4ca3074ef5e0d05568f65dd515f16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.54/tokf-v0.2.54-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50484ad571ef4a7b36386469bb2d07b7f019db1cc22e3895cc9ae8410f8c01f4"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
