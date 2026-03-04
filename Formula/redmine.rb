class Redmine < Formula
  desc "GitHub CLI-like tool for managing Redmine tickets"
  homepage "https://github.com/arstella-ltd/RedmineCLI"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-x64.zip"
      sha256 "4aae66748666b720d1452a5d34c4f2af94984a197c73247129bbe7053f6ad67e"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-arm64.zip"
      sha256 "5b530dc5bec227d5d491f2a24da1ee190f2acf12ea3614604a9d2bcb500ac0f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-x64.zip"
      sha256 "fc511f16d58050d06489ddcbc0eef38a0cc0bbc54e5bf2e586161d18cf7daf74"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-arm64.zip"
      sha256 "bf7c9373709e5a9f1ee74537afb5530114f88c70bb91b2f1cb84e27a98d909ea"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    system bin/"redmine", "--version"
  end
end
