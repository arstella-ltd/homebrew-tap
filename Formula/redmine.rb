class Redmine < Formula
  desc "GitHub CLI-like tool for managing Redmine tickets"
  homepage "https://github.com/arstella-ltd/RedmineCLI"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-x64.zip"
      sha256 "dabf978a0baf9c6b27f77924849c326b1af88e6775029f120a9e514bb2a0fd54"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-arm64.zip"
      sha256 "b79a6915a6de071d38c5414494c2938aa601689f2d019609e6ab2c659f5bcd81"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-x64.zip"
      sha256 "a8741188c9844a10edb2475d6a7d9d46094545be5272e004ce265ffe247c21b4"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-arm64.zip"
      sha256 "6047a6bfbfc25a33f7b95b5ec4c659ef2f180be0b0c4d1e71cadcd5c798110b7"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    system "#{bin}/redmine", "--version"
  end
end