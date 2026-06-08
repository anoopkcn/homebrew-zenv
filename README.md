# homebrew-zenv

Homebrew tap for [zenv](https://github.com/anoopkcn/zenv) — a Python virtual
environment manager for HPC and development systems.

## Install

```sh
brew install anoopkcn/zenv/zenv
```

or, equivalently:

```sh
brew tap anoopkcn/zenv
brew install zenv
```

## Upgrade

```sh
brew update
brew upgrade zenv
```

## Supported platforms

Prebuilt binaries are provided for macOS (Apple Silicon and Intel) and Linux
(arm64 and x86_64).

## Maintenance

`Formula/zenv.rb` is generated automatically by the
[release workflow](https://github.com/anoopkcn/zenv/blob/main/.github/workflows/release.yml)
in the main repo on every tagged release. **Do not edit it by hand** — changes
will be overwritten on the next release.
