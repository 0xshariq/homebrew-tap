class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.0/pi-1.3.0-darwin-arm64.tar.gz"
      sha256 "88808b8408e9fe46b740618fa0473580b9fa5e18e383dcea11b45262a8ae3a5d"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.0/pi-1.3.0-darwin-amd64.tar.gz"
      sha256 "52507a3e3549edf7ac995392d3816516a6a0aba880a12fed1a48e7927e32cce3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.0/pi-1.3.0-linux-arm64.tar.gz"
      sha256 "1dbfe42e5356b1094667038bdf5c81b9dd1572e5575544591a673caafa94cf8c"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.0/pi-1.3.0-linux-amd64.tar.gz"
      sha256 "0a46f267506ed06896c3e339757ce08df824204c3b49ae965280b775867a2ca3"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
