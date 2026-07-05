class HankoAdmin < Formula
  desc "Desktop console for administering a Hanko installation"
  homepage "https://github.com/mpecan/hanko-admin-ui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/hanko-admin-ui/releases/download/v0.1.0/hanko-admin-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0a57d7adaf9d448a5641d8bb49794e31a096885ae5ca49b818e6d201154aecb"
    end
    on_intel do
      url "https://github.com/mpecan/hanko-admin-ui/releases/download/v0.1.0/hanko-admin-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5fddd79959b8883bf6269119d2ba3b76949952930f4f036e486f15ab5581d3be"
    end
  end

  def install
    bin.install "hanko-admin"
  end

  test do
    assert_match "hanko-admin", shell_output("#{bin}/hanko-admin --version")
  end
end
