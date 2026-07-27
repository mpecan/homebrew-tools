# Template rendered by scripts/render-cask.sh during the release workflow into
# a ready-to-use cask for the "lite" build (browser import compiled out — no
# cookie-store access; manual session-key paste only). Published to the
# mpecan/homebrew-tools tap. See docs/packaging.md for build variants.
cask "rusted-claude-meter-lite" do
  version "0.1.4"
  sha256 "26332da7d08cc94ba847a04dfe2af966f8ca87fdc0791ba188a95f9d15ef8aed"

  url "https://github.com/mpecan/rusted-claude-meter/releases/download/v0.1.4/Rusted.Claude.Meter.Lite_0.1.4_aarch64.dmg"
  name "Rusted Claude Meter Lite"
  desc "Claude plan usage meter in your menu bar (no browser import)"
  homepage "https://github.com/mpecan/rusted-claude-meter"

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Rusted Claude Meter Lite.app"

  # `~/.claudemeter` (the usage export shared with the Swift ClaudeMeter and
  # the full build) is deliberately NOT zapped here — uninstalling lite must
  # not remove a file the full build may still own.
  zap trash: [
    "~/Library/Application Support/com.mpecan.rusted-claude-meter-lite",
    "~/Library/Caches/com.mpecan.rusted-claude-meter-lite",
    "~/Library/Preferences/com.mpecan.rusted-claude-meter-lite.plist",
    "~/Library/Saved Application State/com.mpecan.rusted-claude-meter-lite.savedState",
  ]
end
