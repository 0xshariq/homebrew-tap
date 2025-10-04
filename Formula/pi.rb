class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/pi-1.4.0-darwin-arm64.tar.gz"
      sha256 "77596bf4eb3d9e6d60f5e1d259e7c717bd05bb38bb9e5c8abd9a7fa487b31511"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/pi-1.4.0-darwin-amd64.tar.gz"
      sha256 "c20cdaf3d43caae8856e5cd38d51ed220327c9a7d1db9ab7a0d630b46c8cf3ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/pi-1.4.0-linux-arm64.tar.gz"
      sha256 "178ca38030f7a1ebe701fb79bb4f28064080237f57aab0876b0ae5b122e6c654"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.4.0/pi-1.4.0-linux-amd64.tar.gz"
      sha256 "7dfdf98286c89bc49a85f9d3c5b693c6ae214373607bfa32935facc62ad6a894"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
