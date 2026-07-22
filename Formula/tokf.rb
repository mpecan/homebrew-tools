class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.51/tokf-v0.2.51-aarch64-apple-darwin.tar.gz"
      sha256 "f7543900235ce6848fd5feb91aa3fef6ca1366c3d9870f61d05efcc4e9dfaa22"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.51/tokf-v0.2.51-x86_64-apple-darwin.tar.gz"
      sha256 "a07a024763901a4d7b762b82e8dc6c9e9518c356da0437be8cd516913c92aa68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.51/tokf-v0.2.51-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23d606d98d99166ecf4064b0b9ddf1b7c55729fd78f2a776f8d028a1887b409e"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
