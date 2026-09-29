class RippyJev < Formula
  desc "rippy with optional Jev review of uncertain commands (network access)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.2"
  license "MIT"

  conflicts_with "rippy", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.2/rippy-jev-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "fe98f7b7ed7e7211d683865625fe559a242ce9d1e0dbbc43a6d6992883d13abe"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.2/rippy-jev-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "81b8a51f70e418c4cd9a7ea6c8733e75bf2af391650261b1a502291a1ab45ae7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.2/rippy-jev-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8c5a4336cad72040149cdcad3a669d4ac1b65e1b421656fb096a302f14a43e7"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
