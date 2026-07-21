# homebrew-tools

Homebrew tap for [mpecan](https://github.com/mpecan) tools.

## Install

```bash
brew tap mpecan/tools
```

Then install any of the packages below. You can also skip the tap step and install directly by prefixing the name with `mpecan/tools/` (e.g. `brew install mpecan/tools/tokf`).

### Formulae (CLI tools)

| Formula | Description |
|---------|-------------|
| **[rippy](https://github.com/mpecan/rippy)** | Shell command safety hook for AI coding tools (Claude Code, Cursor, Gemini CLI) |
| **[tokf](https://github.com/mpecan/tokf)** | Config-driven CLI that compresses command output before it reaches an LLM context |
| **[share-the-mark](https://github.com/mpecan/share-the-mark)** | Receive design-feedback change-briefs from the share-the-mark browser extension |
| **[hanko-admin](https://github.com/mpecan/hanko-admin-ui)** | Desktop console for administering a Hanko installation |

```bash
brew install rippy
brew install tokf
brew install share-the-mark
brew install hanko-admin
```

### Casks (macOS apps)

| Cask | Description |
|------|-------------|
| **[rusted-claude-meter](https://github.com/mpecan/rusted-claude-meter)** | Claude plan usage meter in your menu bar / tray (macOS + Linux) |
| **[rusted-claude-meter-lite](https://github.com/mpecan/rusted-claude-meter)** | Same app with browser cookie import compiled out — avoids EDR/antivirus false positives |

```bash
brew install --cask rusted-claude-meter
brew install --cask rusted-claude-meter-lite
```

## Auto-updated

Each formula and cask is automatically updated by the respective project's release workflow when a new version is published.
