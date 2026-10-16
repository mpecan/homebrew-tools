class AlliumInspect < Formula
  desc "Explore an Allium specification in a browser, and walk journeys against it"
  homepage "https://github.com/mpecan/allium-inspect"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.3/allium-inspect-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "b1a87e347ef99c648be53cf9be8e01995a38c1fab6976c49af2758f458a9d4b9"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.3/allium-inspect-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "6162d26164f1ae66382dc897f489cb84a57b4cfa500612f0735ae6e09a30eaac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.3/allium-inspect-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8e9eed303ea58e77f54c6f501878187c40bcfeebaf337a10bee7bf67802cbfe"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.3/allium-inspect-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "881a0d418d0f7e579ba5a25f005304edf027919887513c2d37a3bc07ed2dfd8c"
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
