class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.50/tokf-v0.2.50-aarch64-apple-darwin.tar.gz"
      sha256 "085afae41f123eb5929b1478a8dd2fc9d51fa3401ebd368b69e3755440ce295b"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.50/tokf-v0.2.50-x86_64-apple-darwin.tar.gz"
      sha256 "c9d86664a92a73d8a89b1a703e488732974699bb3dbb6718eab48513c67795a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.50/tokf-v0.2.50-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ade19a8e184add4cfea54e0fb52e378fd07204ee0068900d8ac8b06a7fc8bb3"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
