class Redmine < Formula
  desc "GitHub CLI-like tool for managing Redmine tickets"
  homepage "https://github.com/arstella-ltd/RedmineCLI"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-x64.zip"
      sha256 "b34854ab0af6d381d28ef8818c257d1280d633739ee2437ffafa18f79cdcd7c2"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-osx-arm64.zip"
      sha256 "706a4d5efd312f5af736b36a775123bf87753fcd48df6dcf1e827c77aacf85a8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-x64.zip"
      sha256 "f835b25f0228405040c08926b7ec4b24db050f133f423d4a78a38abbf3155765"
    else
      url "https://github.com/arstella-ltd/RedmineCLI/releases/download/v#{version}/redmine-cli-#{version}-linux-arm64.zip"
      sha256 "3502535947544a70fc399b59ac91ae31f2916cf605e53caef71cba11684c1784"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    system bin/"redmine", "--version"
  end
end
