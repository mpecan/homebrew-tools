class HankoAdmin < Formula
  desc "Desktop console for administering a Hanko installation"
  homepage "https://github.com/mpecan/hanko-admin-ui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/hanko-admin-ui/releases/download/v0.1.0/hanko-admin-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff2e84cafd0966cc40fb2429a8d410c6ee529644d552fedec2cd12a87a303185"
    end
    on_intel do
      url "https://github.com/mpecan/hanko-admin-ui/releases/download/v0.1.0/hanko-admin-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "72ca0cf7d1fef1500b56fd864bb1e209b39e4571e41f9630496a8f68d24bb5e1"
    end
  end

  def install
    bin.install "hanko-admin"
  end

  test do
    assert_match "hanko-admin", shell_output("#{bin}/hanko-admin --version")
  end
end
