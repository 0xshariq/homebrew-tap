class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/package-installer-cli-2.1.0-darwin-arm64.tar.gz"
      sha256 "20d3470eb5da75a77ca0d124da72bb6d4cba75b39b3af06c15114696444a862e"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/package-installer-cli-2.1.0-darwin-amd64.tar.gz"
      sha256 "c157fcbba9039c8d951e289d58862b77a97a1adb15c8659b413eb24561711ec0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/package-installer-cli-2.1.0-linux-arm64.tar.gz"
      sha256 "ccdb07d775ff0040273b7d5dc3d63ab80d202f32e7ea0b5dd6cd213593df2a53"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/package-installer-cli-2.1.0-linux-amd64.tar.gz"
      sha256 "77a1655078108e888af867fda7da36c3da3f3def5e17f892828bbf2b2bc32cfb"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
