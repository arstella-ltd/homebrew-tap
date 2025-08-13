class Qx < Formula
  desc "Intelligent CLI tool with advanced web search using OpenAI API"
  homepage "https://github.com/arstella-ltd/Qx"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/Qx/releases/download/v#{version}/qx-#{version}-osx-x64.zip"
      sha256 "3b837e6fcd8df137e21fb8ecade37e56fe989c97374a9000d81fde8612d31849"
    else
      url "https://github.com/arstella-ltd/Qx/releases/download/v#{version}/qx-#{version}-osx-arm64.zip"
      sha256 "b35e5891291d8c1818450ab9226f9572e2c1d330e672ba900bd0262c991015a1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/Qx/releases/download/v#{version}/qx-#{version}-linux-x64.zip"
      sha256 "9f44e316a5f40dc3165f86c48c425f34fecc13b1c268f04f76e0ad33f2b49fe7"
    else
      url "https://github.com/arstella-ltd/Qx/releases/download/v#{version}/qx-#{version}-linux-arm64.zip"
      sha256 "1b759dab1973aa10e40ee663dc4afe7f5df9eafdfbdf267f468dadacf977f95f"
    end
  end

  def install
    bin.install "qx"
  end

  test do
    system bin/"qx", "--version"
  end
end
