class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-darwin-arm64.tar.gz"
      sha256 "911686adb80fb26ebeff16d18d580bdb583f859114e47e053c7b87faffa2a27f"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-darwin-amd64.tar.gz"
      sha256 "4cba86b8e1231069ea254c814967dbcc3f1cdb114612313d33aa67de4114785d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-linux-arm64.tar.gz"
      sha256 "49e3d8a5312b778f55c59fe733bfc2be8a3885a848eb6f3add57491d4a59b8a3"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-linux-amd64.tar.gz"
      sha256 "8547613945a7c7126775b4fec8b4a8e87aec1ac008d4221e20f237ef26672cd6"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
