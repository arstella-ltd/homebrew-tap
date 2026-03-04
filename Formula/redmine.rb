class Redmine < Formula
  desc "GitHub CLI-like tool for managing Redmine tickets"
  homepage "https://github.com/arstella-ltd/RedmineCLI"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-x64.zip"
      sha256 "ea36f843e1ff58b8c74abd1f5ec63ca19b1fa81d936c5374c21f70fb718941bf"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-arm64.zip"
      sha256 "43bd09074f58a9af3b22452caaa581811ee3c7b29dfefbf8a177ed53b6e8950c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-x64.zip"
      sha256 "f011d3d4d60b932f62fee282cc55eb1ebef9bf2f03d2fdd7782eb724a2d2df30"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-arm64.zip"
      sha256 "086be2a909a90596a1f761f729c389cb1b310f0c682be31a871f12e111c804d9"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    system bin/"redmine", "--version"
  end
end
