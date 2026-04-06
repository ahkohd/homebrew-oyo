class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.27/oy-aarch64-apple-darwin.tar.gz"
      sha256 "54d9f1b0396c1e83b7e0d4dfbb140de5ed5b64273575d14aa3440b0a9e4f0556"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.27/oy-x86_64-apple-darwin.tar.gz"
      sha256 "c2af1498e3910fd0e12179d01f24fe934f1827e390010b13110c93fc48c91372"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.27/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "197a39d6df7f78e838e84ba6ab4f16f9345db393d7dd09ea312da5ffb72b7a9a"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
