class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.52/tokf-v0.2.52-aarch64-apple-darwin.tar.gz"
      sha256 "74ad628f88ddfedefffc99e3d9850d17bfced94f68422ef3507bf92416720e33"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.52/tokf-v0.2.52-x86_64-apple-darwin.tar.gz"
      sha256 "85a3ad664fc6c109468aa06aea676a089a5345e23b2e369b59b8cce912b77046"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.52/tokf-v0.2.52-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "304b1eb45050f357c6cc2f4d593f12036311866d0216e9ae284d9ee963b16e9d"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
