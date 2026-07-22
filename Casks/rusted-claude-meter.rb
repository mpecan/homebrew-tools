# Template rendered by scripts/render-cask.sh during the release workflow
# (.github/workflows/release.yml, issue #14) into a ready-to-use cask,
# attached to each GitHub Release as rusted-claude-meter.rb.
#
# See docs/packaging.md for how to add the rendered cask to a tap.
cask "rusted-claude-meter" do
  version "0.1.3"
  sha256 "803da807fc720aec74cf4d1cfdf732e3c442caab40999b82669a43038ebb4bb8"

  url "https://github.com/mpecan/rusted-claude-meter/releases/download/v0.1.3/Rusted.Claude.Meter_0.1.3_aarch64.dmg"
  name "Rusted Claude Meter"
  desc "Claude plan usage meter in your menu bar"
  homepage "https://github.com/mpecan/rusted-claude-meter"

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Rusted Claude Meter.app"

  zap trash: [
    "~/Library/Application Support/com.mpecan.rusted-claude-meter",
    "~/Library/Caches/com.mpecan.rusted-claude-meter",
    "~/Library/Preferences/com.mpecan.rusted-claude-meter.plist",
    "~/Library/Saved Application State/com.mpecan.rusted-claude-meter.savedState",
    "~/.claudemeter",
  ]
end
