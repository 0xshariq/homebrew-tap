class Pi < Formula
  desc "Short alias version of Package Installer CLI"
  homepage "https://github.com/0xshariq/go_package_installer_cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/pi-1.0.0-darwin-arm64.tar.gz"
      sha256 "162442da3c1941e7b987e205bbe7ceed55ee3ecc27c618e22b575ccccf2b9be1"
    else
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/pi-1.0.0-darwin-amd64.tar.gz"
      sha256 "a2820dccbb60a35ac76f22fc451bef7f650c153a88f4051d504f9abcaf0cb0d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/pi-1.0.0-linux-arm64.tar.gz"
      sha256 "92dbcc6263313863a08811cf861463377f1f8788f23239a07521048ff35624b8"
    else
      url "https://github.com/0xshariq/go_package_installer_cli/releases/download/v1.0.0/pi-1.0.0-linux-amd64.tar.gz"
      sha256 "4f5886da3ae1df2f2d8da334ed1ddf9b11a0c2fa7e6ea505d556e07f75c0025a"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
