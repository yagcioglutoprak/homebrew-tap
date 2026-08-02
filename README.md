<div align="center">

# Homebrew Tap

Casks maintained by [toprak.sh](https://toprak.sh).

</div>

## Dusty

A free, open-source macOS menu bar disk cleaner that frees up disk space
without deleting anything it shouldn't. The deletion logic is allowlist-only
and unit tested, so it cannot touch anything outside a fixed set of
known-safe paths, and it shows you every path and its size before removing it.

Signed and notarized by Apple. macOS 13+. MIT licensed, no account, no
telemetry.

Repo: [yagcioglutoprak/dusty](https://github.com/yagcioglutoprak/dusty)

```bash
brew install --cask yagcioglutoprak/tap/dusty
```

The cask also links the `dusty` command line into your `PATH`, so the same
engine, allowlist, and safety rules are scriptable:

```bash
dusty scan                  # measure all three levels, deletes nothing
dusty clean --yes           # delete the Safe level
dusty targets               # print the entire allowlist
```

### Update

The cask supports `brew upgrade`, and the app self-updates via Sparkle on
silent delta releases. Either path works.

### What it cleans

| Level | What it clears |
| --- | --- |
| Safe | User caches, app logs, Trash, browser and app caches (Chrome, Slack, Discord, Spotify, VS Code, Cursor, Signal, Obsidian, Teams, Zoom, Telegram) |
| Developer | Xcode DerivedData, simulators, npm/yarn/pnpm/pip/uv/Bun/Deno/Cargo/Go/Homebrew/Composer/Gradle/CocoaPods/SwiftPM caches, JetBrains and Unity caches |
| Deep | Old `.dmg`/`.pkg` installers, Xcode archives, unused simulators, local Time Machine snapshots, aged diagnostic logs, opt-in Ollama models |

Every clean parks items in the Trash with an undo window and writes a deletion
log. For the full safety writeup, see
[How Dusty is built to avoid deleting the wrong thing](https://toprak.sh/dusty/safety/).
