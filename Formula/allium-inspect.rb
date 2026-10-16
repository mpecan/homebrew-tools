class AlliumInspect < Formula
  desc "Explore an Allium specification in a browser, and walk journeys against it"
  homepage "https://github.com/mpecan/allium-inspect"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.2/allium-inspect-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "4081dbf574bb9564a29acaaf1c0c64cb54b12e2de76e079942d3627bc8a71e8b"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.2/allium-inspect-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "c5f83cfc3e9b5d93d2e5fd608041bee818a78cf426be10c438bb938f33e08ecf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.2/allium-inspect-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "028c8631372c5a2efa1da14ab002bea48cc040fc025084de3a5213bdde49c423"
    end
    on_intel do
      url "https://github.com/mpecan/allium-inspect/releases/download/allium-inspect-v0.1.2/allium-inspect-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bab17db8cc0a1565d286d4274e079ce3fae238958aa6617e5605cb373f3fd59f"
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
