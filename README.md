# Mrkh97's Homebrew tap

## Mochi

A cat that lives on your Mac desktop. She walks on your windows, hides behind them, naps on them and expects to be fed. See the [project page](https://github.com/Mrkh97/mochi) for what she does.

```sh
brew install --cask mrkh97/tap/mochi-cat
```

Then open Mochi from your Applications folder and look for the cat face in the menu bar.

| | |
|---|---|
| Update | `brew upgrade --cask mochi-cat` |
| Uninstall | `brew uninstall --cask mochi-cat` |
| Uninstall and forget her settings | `brew uninstall --cask --zap mochi-cat` |

If you installed Mochi by hand before, add `--force` the first time so Homebrew can replace that copy.

Needs macOS 14 Sonoma or later, on Apple silicon or Intel.

### Notes

- The cask is called `mochi-cat` because `mochi` in Homebrew is an unrelated flashcards app.
- Mochi is signed with a Developer ID and notarized by Apple, so it opens like any other downloaded app.
- The cask is updated automatically whenever a new Mochi release is published.
