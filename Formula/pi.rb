class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.0.0/pi-1.1.0-darwin-arm64.tar.gz"
      sha256 "70e31fa74a6ecb9e19ef3dfee708065b5abb5c30d5edba4f3d62f74067848b96"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.0.0/pi-1.1.0-darwin-amd64.tar.gz"
      sha256 "b5f2b671750f8680f6b559e6f2878b01242addbc0f306953b7d44b8db33f283f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.0.0/pi-1.1.0-linux-arm64.tar.gz"
      sha256 "dcf58cae92ff11f15622defc3e851f218273e06dde30632b26e2933b8b5b9450"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.0.0/pi-1.1.0-linux-amd64.tar.gz"
      sha256 "74e8ec4c4716668321764bf10840347dc6ae2d611f483e3a3e3ffc83c904c7d2"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
