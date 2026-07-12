class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.45/oy-aarch64-apple-darwin.tar.gz"
      sha256 "6857ae5259a5d439c8e3ce448e67e4fb48d4e6f904756837e877d4c1ccc801bd"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.45/oy-x86_64-apple-darwin.tar.gz"
      sha256 "1bb4360a4e524593ff6f0e822c74edc362945ae0701c99bfb742d47c2170339a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.45/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a043eb535c6b7dd5908c7ce2960f9c43735016a0ac1fac4732997fdd4df83fd"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.45/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df9fd3382d9112296e127bbd00adf4d52b47fe1a3556f4abb3829a7810a27d3a"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
