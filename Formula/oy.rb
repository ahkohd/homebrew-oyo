class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.67"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.67/oy-aarch64-apple-darwin.tar.gz"
      sha256 "5587779294f8a1610cad75b56e78fec34aee3d5f0d1958af0b4b44e621611d29"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.67/oy-x86_64-apple-darwin.tar.gz"
      sha256 "70729c73bb3e684892fce2a4216d9edf611b48cbb1ee867c1e9c33d27e62c521"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.67/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7cd9bd93710a5c56e3c59696ce8ff5332a03af5fea331abff2a1594a8b2ed3c0"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.67/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d8abbca0689b90f4defc451b99d8d8452fda7bb3bb22fe951adf840ab3d7055"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
