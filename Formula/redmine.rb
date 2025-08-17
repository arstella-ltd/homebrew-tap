class Redmine < Formula
  desc "GitHub CLI-like tool for managing Redmine tickets"
  homepage "https://github.com/arstella-ltd/RedmineCLI"
  version "0.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-x64.zip"
      sha256 "4999bdbeb7df8e8de9757e7612f182b55f4ed1681d6ffc6d0e1c80b0e587192b"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-arm64.zip"
      sha256 "e37fbae91731a1f2c041aa34c5c0b998e5c8a20cb9bafb1019667e2f507fc8a2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-x64.zip"
      sha256 "f96b00a4b6a25c3af342cf0e1c7058e8c43ae89649108a0f56f19152ee272127"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-arm64.zip"
      sha256 "21a54aa760f7662510aa569ddcb6929c00fa57600101c2999f02ddb3e525562e"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    system bin/"redmine", "--version"
  end
end
