# Homebrew Tap for RedmineCLI

This is a Homebrew tap for [RedmineCLI](https://github.com/arstella-ltd/RedmineCLI), a GitHub CLI-like tool for managing Redmine tickets.

## Installation

```bash
brew tap arstella-ltd/homebrew-tap
brew install redmine
```

## Usage

After installation, you can use the `redmine` command:

```bash
redmine auth login
redmine issue list
redmine issue view 12345
```

See the [RedmineCLI documentation](https://github.com/arstella-ltd/RedmineCLI) for more details.

## Development

To test the formula locally:

```bash
brew install --build-from-source Formula/redmine.rb
```

## License

MIT License