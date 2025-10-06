class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/package-installer-cli-2.0.0-darwin-arm64.tar.gz"
      sha256 "3a2fa9b66222b9a86e6855e7d6695457212370bba8852fbbb28947695247a27f"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/package-installer-cli-2.0.0-darwin-amd64.tar.gz"
      sha256 "172942f7b7e8ece4a33275e094150913560cc7844749c55a267fd46c4e64e522"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/package-installer-cli-2.0.0-linux-arm64.tar.gz"
      sha256 "140afc5daaf7e00b3c019d19f724bc3d2e90c4e2f011b282268baa4429644bc9"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/package-installer-cli-2.0.0-linux-amd64.tar.gz"
      sha256 "b2fc3c1a889b20d33a58a04eb04fcc92f267ed28b96f5bf04513a82845ffadec"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
