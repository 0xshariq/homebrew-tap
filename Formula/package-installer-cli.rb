class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/package-installer-cli-1.4.0-darwin-arm64.tar.gz"
      sha256 "c1dc639c0f0122e66a484f453c8e815d62ef546fe96aaf44de80a09cd26c1754"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/package-installer-cli-1.4.0-darwin-amd64.tar.gz"
      sha256 "593acf6bb586ad209c8de3c7cc005955aa50994985e83101f3555047e4e3de02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/package-installer-cli-1.4.0-linux-arm64.tar.gz"
      sha256 "24865cece3a8b088c8b48c6291ff2e350cb037982fa0fbcaf554789af9667f42"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/package-installer-cli-1.4.0-linux-amd64.tar.gz"
      sha256 "78da21b32b45c643b734a66f6ffb716613420cf15d832e5d9ba5c611d8b6440f"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
