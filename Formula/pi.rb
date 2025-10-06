class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/pi-2.0.0-darwin-arm64.tar.gz"
      sha256 "35b9ba371799254524d4b4f33a616b81261e5df5ff1bbc63661a2fec1bb2f226"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/pi-2.0.0-darwin-amd64.tar.gz"
      sha256 "f79cbfb3f165b59fba329f860a48bb32f577ec93b95e3a286c32320777017ec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/pi-2.0.0-linux-arm64.tar.gz"
      sha256 "2233ecb9858ac6129a0cc37e3b5d12bff56d8c0476f17e05cdcf250a3635a366"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.0.0/pi-2.0.0-linux-amd64.tar.gz"
      sha256 "a959385bdf95266d034d2474ec73315e7aec39fec97fc4e8195de9a0ce117318"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
