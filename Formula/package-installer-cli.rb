class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.3.0-darwin-arm64.tar.gz"
      sha256 "52559d070297a24015b55c73473dc30dc672f5b4c4ff37da81acfee1ca0550c6"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.3.0-darwin-amd64.tar.gz"
      sha256 "abf8fb7be7876f2df2655e94ddd46e9cbc74ef718b13d5671e2cedca7ec8b535"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.3.0-linux-arm64.tar.gz"
      sha256 "abea256a5ff9f666670089d19fb907bd32fd719c5faa11ab65e4ed8bff646a89"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.3.0-linux-amd64.tar.gz"
      sha256 "a0ac8c822be21eba4f6f35f2c0178033565a5e982e32268ee09cc0336dee166b"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
