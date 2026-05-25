class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.31/oy-aarch64-apple-darwin.tar.gz"
      sha256 "ddce3ee74b2e12c3ae5953cb96b30b6f6d628a50d2a8c7d99a27b0c8a07317d7"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.31/oy-x86_64-apple-darwin.tar.gz"
      sha256 "afcebb9d3f4e29f7ade774c0a2b5a4f742a613d3a250ba93a079ebf4c896b4d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.31/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2db115ef17a9f39d2665cf8891475bd3edee687308d197de591550bd9d70bd09"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.31/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd68979ff02015adc39816369f5c83fe30467285798d8dd4b80aa77a5500502a"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
