class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/pi-1.2.0-darwin-arm64.tar.gz"
      sha256 "3bbb83be47d8f89343914e4226a5bc5ede518ce9dcbc9882dd86db9195af6d9f"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/pi-1.2.0-darwin-amd64.tar.gz"
      sha256 "121569c402074856496df2cab0b95e5e0b1628f5a17f27e85c7fd38c1ba7dc5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/pi-1.2.0-linux-arm64.tar.gz"
      sha256 "9f4f62c658241acbafc74e25055fb00b5cb9916ce984a880b0b667cb55be4da3"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.2.0/pi-1.2.0-linux-amd64.tar.gz"
      sha256 "24e5918032b44e987105cf9a330f1eeebad57be3bce86648136cbd644d6293eb"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
