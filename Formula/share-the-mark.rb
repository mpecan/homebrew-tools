class ShareTheMark < Formula
  desc "Receive design-feedback change-briefs from the share-the-mark browser extension"
  homepage "https://github.com/mpecan/share-the-mark"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.3.0/share-the-mark-aarch64-apple-darwin.tar.gz"
      sha256 "bf3f8f54b654d10b61125191b300767644f481103722c0a95c1b9a2b28d5f693"
    end
    on_intel do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.3.0/share-the-mark-x86_64-apple-darwin.tar.gz"
      sha256 "0662bba3ba06b1d9dfe6a48018d08260a596b5a6e93be36dde8a4638695c6041"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.3.0/share-the-mark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d49c010666e2a7bba59b79ed510e884e95f738b69bc35a676061c813e444a775"
    end
  end

  def install
    bin.install "share-the-mark"
  end

  test do
    assert_match "share-the-mark", shell_output("#{bin}/share-the-mark --version")
  end
end
