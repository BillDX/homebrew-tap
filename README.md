# BillDX/homebrew-tap

Homebrew tap for [Inside Voice](https://github.com/BillDX/InsideVoice), push-to-talk
dictation for macOS that never leaves your Mac.

```bash
brew trust BillDX/tap      # Homebrew 7+ requires trusting third-party taps
brew tap BillDX/tap
brew install --cask inside-voice
```

Builds are signed with a Developer ID and notarized by Apple (from 1.4.0),
so they open without warnings. Update with `brew upgrade --cask inside-voice`.

| Cask | App |
|---|---|
| `inside-voice` | Inside Voice — `/Applications/Inside Voice.app` |

The cask's `version` and `sha256` are bumped automatically by the project's
release script on every release.
