class Rippy < Formula
  desc "Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI)"
  homepage "https://github.com/mpecan/rippy"
  version "0.2.4"
  license "MIT"

  conflicts_with "rippy-jev", because: "both install a `rippy` binary"

  on_macos do
    on_arm do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.4/rippy-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "915077558473a5423c6e281470846fa4d4eceaad9ec6422a1934755a1b9d9d63"
    end
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.4/rippy-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "aa3bd474d95dd4cf05baa15d64389509935daf752f964201dff033b0ce8d724f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mpecan/rippy/releases/download/rippy-cli-v0.2.4/rippy-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6d1251319e843c3072b0326406606ad2b1113df870ac4a2169a5b472739438c"
    end
  end

  def install
    bin.install "rippy"
  end

  test do
    assert_match "rippy", shell_output("#{bin}/rippy --version")
  end
end
