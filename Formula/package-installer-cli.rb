class PackageInstallerCli < Formula
  desc "CLI tool to install and manage packages easily"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/package-installer-cli-1.3.2-darwin-arm64.tar.gz"
      sha256 "8c5f9ef2e4d9c780325a050f2ad02ebf35d35f5d4b8aef47c6d1b75cceebff6b"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/package-installer-cli-1.3.2-darwin-amd64.tar.gz"
      sha256 "ccecfd642a16c0fd1427c5b90960db3f46084add79d4d998c6ffea21487f9247"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/package-installer-cli-1.3.2-linux-arm64.tar.gz"
      sha256 "a6dc640df366323a9710284bb0bd6a36623eece86ef7c8f070a4d3623b37bba6"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/package-installer-cli-1.3.2-linux-amd64.tar.gz"
      sha256 "b52e998ce9666125c7c0f51553dc8529e480b8933bec55569d627ba44dc8c6ee"
    end
  end

  def install
    bin.install "package-installer-cli"
  end

  test do
    system "#{bin}/package-installer-cli", "--version"
  end
end
