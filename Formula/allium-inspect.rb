class AlliumInspect < Formula
  desc "Explore an Allium specification in a browser, and walk journeys against it"
  homepage "https://github.com/mpecan/allium-inspect"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.1/allium-inspect-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "1e997c5868971bc923d7a71a29ec1f09fd30620dca7501341bdbbd4ddcea025f"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.1/allium-inspect-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "87de34e664cffd9de3b6243e33cdae1d3e280e20f647a01c895a7718e2f02657"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.1/allium-inspect-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0c6f34b4034f9967ea1574fa529a36285bc32e3ee11bef36878926f951c2e81"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.1/allium-inspect-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bbba11b6f6f6212aac5403352e3bb4f023844f9633a77fe38dfe4be5372c1c7"
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
