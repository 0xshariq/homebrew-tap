class Pi < Formula
  desc "Second option of Package Installer CLI"
  homepage "https://github.com/0xshariq/homebrew-tap"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/pi-2.1.0-darwin-arm64.tar.gz"
      sha256 "2c664ef5e27379591cb7eff4cf432355c17c798742ad8046a760035eefafe26e"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/pi-2.1.0-darwin-amd64.tar.gz"
      sha256 "7e9d58b6923cd700bd7efa678496e5966a50130db8689f446200304a0f24cb5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/pi-2.1.0-linux-arm64.tar.gz"
      sha256 "bca1a317b625d43e20dca2cd8cc305429472ad3feafb596003dc09f227c684af"
    else
      url "https://github.com/0xshariq/homebrew-tap/releases/download/v2.1.0/pi-2.1.0-linux-amd64.tar.gz"
      sha256 "b8b57694fc57430e20e134e51046cbe3269c6eb1bb7155793fe229181006e98b"
    end
  end

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi", "--version"
  end
end
