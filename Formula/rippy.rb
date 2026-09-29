class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.2"
  license "MIT"

  conflicts_with "rippy-jev", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.2/rippy-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "ca8cfbcfe6186fa4c897c0c06f376f47c224f06c056ebdb0183c955e624751e5"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.2/rippy-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "3169475a406303991e176de4c944b004629b129bc3e4314816619c67fc97cfb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.2/rippy-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "061041803f888e6ac58447f671fdf667703889865b4b9bf700c5adef578cd8d6"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
