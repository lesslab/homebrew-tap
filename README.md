# Lesslab Homebrew Tap

```sh
brew install --cask lesslab/tap/switchman
```

Installing by its fully qualified name trusts just this cask, so no separate
`brew tap` or `brew trust` step is needed. Homebrew has required explicit
trust for non-official taps since 6.0.0, and the short-name form
(`brew tap lesslab/tap && brew install --cask switchman`) stops until you
grant it.

## Switchman

A browser chooser and link router for the Mac: every link opens where you
meant it. [switchman.app](https://switchman.app/)

The cask tracks the same notarised disk images the app updates itself from,
so `brew upgrade` and Switchman's own updater never disagree about what the
current version is.
