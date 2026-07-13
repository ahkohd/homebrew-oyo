class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.47/oy-aarch64-apple-darwin.tar.gz"
      sha256 "c49b4456ad3ea12139cbdfab9a65dfe217cdccb29266a6c21affa583bb79ec2b"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.47/oy-x86_64-apple-darwin.tar.gz"
      sha256 "7c325a310080b89055d417102591b3c82fb1da8ef2eb6b956c4b2db7436d5a0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.47/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a910d3252e67bbfabfe161b2bf3dc97c6b19577ec96073fc10f3356611f5c32"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.47/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b63e06db91f0781cbf53721e0c4a27084c7634bd745177f2d4f6886a8a1bd638"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
