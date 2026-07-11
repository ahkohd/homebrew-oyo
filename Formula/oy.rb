class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.43/oy-aarch64-apple-darwin.tar.gz"
      sha256 "b7871cf7528257d7f1c0a783faff1c074fd4786661bb268c04abe6407f50ef80"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.43/oy-x86_64-apple-darwin.tar.gz"
      sha256 "1d6323a60a28c6c83d4645526f97854b34d059aa0ffb96dd232b930c8583dc4c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.43/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4edd2e82d1ec5ffafaf3b982c8aa02f97b5c7e451d71a6c6c42ff1f586f43be0"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.43/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6bf680cb5e0c864d63ab2106c345ddad673e33a0e757bca9e9900a5f91ccb09"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
