class HankoAdmin < Formula
  desc "Desktop console for administering a Hanko installation"
  homepage "https://github.com/mpecan/hanko-admin-ui"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/hanko-admin-ui/releases/download/v0.1.1/hanko-admin-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "653fca51cf84685068f48f4e5a03100c286089f5d51279aa6ad32422f3e69b0f"
    end
    on_intel do
      url "https://github.com/mpecan/hanko-admin-ui/releases/download/v0.1.1/hanko-admin-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "f6b91e8d8749cfe3b070f332b291fbe94b55705040d752ceba0b3ea0a92dea0e"
    end
  end

  def install
    bin.install "hanko-admin"
  end

  test do
    assert_match "hanko-admin", shell_output("#{bin}/hanko-admin --version")
  end
end
