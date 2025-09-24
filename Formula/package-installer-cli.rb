class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/go_package_installer_cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/package-installer-cli-1.0.0-darwin-arm64.tar.gz"
      sha256 "11cde9abd163b49539f4cdec7f83bc8adae835f3a3f849a9319808706a4065f2"
    else
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/package-installer-cli-1.0.0-darwin-amd64.tar.gz"
      sha256 "ae42f09b8063fcf740770c23ee565d6409502377b1b1afe374ff50e9e6fff4ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/package-installer-cli-1.0.0-linux-arm64.tar.gz"
      sha256 "d09750b1dab9433eee066310bb9b4d78e6d734066278e8ab095f4b6ca40e1d79"
    else
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/package-installer-cli-1.0.0-linux-amd64.tar.gz"
      sha256 "975ca37c9158c85d02f1f639d23016efbe0a913c1f36e1387211d16d6fdcb868"
    end
  end

  on_windows do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/package-installer-cli-1.0.0-windows-arm64.tar.gz"
      sha256 "a8786c702267d400b75ef30093b71de949e25c6416a808b0fb64a7c35f037e53"
    else
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/package-installer-cli-1.0.0-windows-amd64.tar.gz"
      sha256 "9c65f65e5fc3494a6b66fb3684bfd83f8757df7fbd701a98a8d870a17fb1c403"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
