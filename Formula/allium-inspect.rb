class AlliumInspect < Formula
  desc "Explore an Allium specification in a browser, and walk journeys against it"
  homepage "https://github.com/mpecan/allium-inspect"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.4/allium-inspect-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "30c036f107a6e1671f6e62c39227328fde697eae348e93af1d40fe1e7be3f63a"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.4/allium-inspect-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "a9d0190cbc1bfb68824725cfa07b8fb3084cf9fb4114d01eb9b3221b83ebefaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.4/allium-inspect-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d4137ad617b0601d5d28cf888b5a83f2bda34131eda1a1a1db077dccebc7147"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.4/allium-inspect-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9707b26d25049413256ad1bc3cc333599cfa5cf21dc6e22ce0654ce1c84053a4"
    end
  end

  def install
    bin.install "allium-inspect", "allium-journey"
  end

  def caveats
    <<~EOS
      allium-inspect reads a spec set through the allium CLI, which it
      expects on PATH:
        brew install juxt/allium/allium
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/allium-journey --version")
    assert_match version.to_s, shell_output("#{bin}/allium-inspect --version")
  end
end
