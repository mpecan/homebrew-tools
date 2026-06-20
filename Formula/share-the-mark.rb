class ShareTheMark < Formula
  desc "Receive design-feedback change-briefs from the share-the-mark browser extension"
  homepage "https://github.com/mpecan/share-the-mark"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.2.0/share-the-mark-aarch64-apple-darwin.tar.gz"
      sha256 "97f9d5c02dcfc22ddaa3719afc5c4692918ee32c7c93ac94c852c3d200c98b9a"
    end
    on_intel do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.2.0/share-the-mark-x86_64-apple-darwin.tar.gz"
      sha256 "e169a71abbb39577f7d96f35b9ba993c9a769d93fca1958e3cbbbc8089b6479a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.2.0/share-the-mark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4326259070b3c93f22ea4fdaed90e2229239d5b927d1b0479c6f18fce03832df"
    end
  end

  def install
    bin.install "share-the-mark"
  end

  test do
    assert_match "share-the-mark", shell_output("#{bin}/share-the-mark --version")
  end
end
