class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.39/tokf-v0.2.39-aarch64-apple-darwin.tar.gz"
      sha256 "e7f0d811304caad9cd2f593e562c74fc45f5444357fc3e55ed12245c81e27e59"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.39/tokf-v0.2.39-x86_64-apple-darwin.tar.gz"
      sha256 "3c6632349c0566c0e695dffe385b1d894a8c75c0a12bd18d05711e14c7a192ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.39/tokf-v0.2.39-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2b7510651344bf790807aada4d83f790cdf2a19c3ef3d4fe86dfedcc9926e05"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
