class Tokf < Formula
  desc "Config-driven CLI that compresses command output before it reaches an LLM context"
  homepage "https://tokf.net"
  version "0.2.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.47/tokf-v0.2.47-aarch64-apple-darwin.tar.gz"
      sha256 "610291c6a46dd9b4c4ecd4f93b1d2434cb451187b41f4248965a636f49de9664"
    end
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.47/tokf-v0.2.47-x86_64-apple-darwin.tar.gz"
      sha256 "3a8834e907bd2a4e2ea102b39f866aa91e0cd9304a4255ce396fee91d720b759"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/tokf/releases/download/tokf-v0.2.47/tokf-v0.2.47-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e3741956d61a2fe7a833cc35dca7d975a94524aa4bb049642c842acf963fff0"
    end
  end

  def install
    bin.install "tokf"
  end

  test do
    assert_match "tokf", shell_output("#{bin}/tokf --version")
  end
end
