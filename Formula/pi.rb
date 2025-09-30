class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/pi-1.3.1-darwin-arm64.tar.gz"
      sha256 "fb38342e4963949c61c3efe3271d1025bff6e0b8f5131c22b9d87da68469366c"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/pi-1.3.1-darwin-amd64.tar.gz"
      sha256 "926355fe7dbde441f6df03e264b7623af61e3102f309c43e28df465b45d2e54d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/pi-1.3.1-linux-arm64.tar.gz"
      sha256 "fc82d5b3eca5b7940a721fb611bbfdb565d69df43b3604fa852cb0299cd268d3"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v1.3.1/pi-1.3.1-linux-amd64.tar.gz"
      sha256 "ac2831eed501fec6cec0f3bd4b5189e1e1e478ac270d05bc24dbca86a77cd2ce"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
