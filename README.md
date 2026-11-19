# homebrew-tap

```
brew install nulljosh/tap/plank-lang
brew install nulljosh/tap/nimble
brew install nulljosh/tap/keyrate
brew install --cask nulljosh/tap/hermes
```

`plank-lang` installs `plank.py` as `plank`. It needs `uv` (installed as a dependency) and a C compiler for linking; the first run fetches llvmlite on its own.

`keyrate` is the typing test in the terminal: it shows the keys you miss. Built from source with Swift (macOS 14 or later, or Linux).

`nimble` gives you `nimble "question"` in the terminal.

`hermes` is the Mac app for App Store Connect. It pulls in the `asc` CLI it runs on.
