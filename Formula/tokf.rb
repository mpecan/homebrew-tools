class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.38/tokf-v0.2.38-aarch64-apple-darwin.tar.gz"
      sha256 "e9ceb7ab31e45e161980d8ae0fb71c500055509ad64942ecf4a35713b38dc40e"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.38/tokf-v0.2.38-x86_64-apple-darwin.tar.gz"
      sha256 "b558a874c39b7525a76857aea7286f14a0a873a15f21acbc1a35bffdde0e051a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.38/tokf-v0.2.38-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7456dde57ecdec42dacf6b08651ddd967f54df612b210b3fa1d07bd81702b06a"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
