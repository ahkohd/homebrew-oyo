class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.60/oy-aarch64-apple-darwin.tar.gz"
      sha256 "ec7960b6a17618f7f9f1e578c39e38f91684017730ba830f3e325002c25f3a55"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.60/oy-x86_64-apple-darwin.tar.gz"
      sha256 "2858edc6606199f92eba14faa8334585c253de39b0c2e37be3047f837f5f5e40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.60/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a58537ae5a7ab97991e53bfe2044f88706540493745c0989c355de3475c576fc"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.60/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16d1f696fa62a88568ff78dfae50203fba41c5e47af17033d280f8b9ca39b5e1"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
