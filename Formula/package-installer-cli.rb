class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-darwin-arm64.tar.gz"
      sha256 "aa5b5f7977e68fe968cae36d9dea851d630e59ea817d22b9d7e211351483cb77"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-darwin-amd64.tar.gz"
      sha256 "a7b2c6d2abb7e0f41ef3922480fa21c7d5cda5bf96b198a9acd5aec3194c2016"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-linux-arm64.tar.gz"
      sha256 "0f43b309a2f96a059edaa795a32dc442c97e0bbb1c5d79b9f9ba23d910e2359a"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/package-installer-cli-1.2.0-linux-amd64.tar.gz"
      sha256 "a8a6412741d750ac159d879b7537288d152cf832757e9e37747edec78d51606f"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
