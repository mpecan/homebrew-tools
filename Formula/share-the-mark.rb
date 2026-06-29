class ShareTheMark < Formula
  desc "Receive design-feedback change-briefs from the share-the-mark browser extension"
  homepage "https://github.com/mpecan/share-the-mark"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.4.0/share-the-mark-aarch64-apple-darwin.tar.gz"
      sha256 "394b3a8926c468d77eccee85cd8ed56ce92f3b7cfaf5e580bb83dab0f164d45c"
    end
    on_intel do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.4.0/share-the-mark-x86_64-apple-darwin.tar.gz"
      sha256 "5c9163ae87936ee3cda2a920cdeaa22c58a436aa41fcd0a8a911e4e89f653f67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/share-the-mark/releases/download/cli-v0.4.0/share-the-mark-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efc24229027bd7e25e872d7aa72162b26c40b8339d10022a2910af8ff38e20ef"
    end
  end

  def install
    bin.install "share-the-mark"
  end

  test do
    assert_match "share-the-mark", shell_output("#{bin}/share-the-mark --version")
  end
end
