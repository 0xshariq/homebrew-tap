class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/package-installer-cli-1.3.1-darwin-arm64.tar.gz"
      sha256 "5e3b9ca093259afbb965a93f57eddb8bea7c5e1e9c53fd50cc1a009d7259fb08"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/package-installer-cli-1.3.1-darwin-amd64.tar.gz"
      sha256 "cf40a866d783ce538e38b6aa521a0cae58dc730d244a03d94693880a3dc7a6a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/package-installer-cli-1.3.1-linux-arm64.tar.gz"
      sha256 "9e9b6014f1941364fcf26caa900ac32faaed9f25fc4ad3636aa3a42f7a13ca9d"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/package-installer-cli-1.3.1-linux-amd64.tar.gz"
      sha256 "40a435f458a1773774923f7eb65cb111d20a7338a109c3e7f6b7ed5a801f274f"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
