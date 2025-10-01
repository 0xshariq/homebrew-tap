class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/pi-1.3.2-darwin-arm64.tar.gz"
      sha256 "0f73eadd1c0d41493f6c996528338c18257eafee997ccb354e0ddb1d1f2e4c66"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/pi-1.3.2-darwin-amd64.tar.gz"
      sha256 "c2a87828edc9d8ab011065c6a5a370731c6afe6af58ba391be7860b276076576"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/pi-1.3.2-linux-arm64.tar.gz"
      sha256 "660a787efd77786eeda6cb6c80d0f8907992c012aba6ecdb450b5abdb6d2996e"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.2/pi-1.3.2-linux-amd64.tar.gz"
      sha256 "f9ed85a1561c69f1a6a8902918a49e31ae871e3ef577e1b2b8a13365f5351cc7"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
