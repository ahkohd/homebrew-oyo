class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.35/oy-aarch64-apple-darwin.tar.gz"
      sha256 "33ca5ad89cc3fb277312340822781a3d0ceba7f1bf48a4b62f50c1063b9245a8"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.35/oy-x86_64-apple-darwin.tar.gz"
      sha256 "aa56c2536f2ac27055d9868582da35f3c09b951f11f2376318601a46979bfaad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.35/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ed668cb3ba9f28a46369aa7dc09458e8a750d1e8a9d50bcf74761397d61a869"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.35/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0319d5869a9662835a8343bae32290160baa56604185d587c1e54eb53e85e3a1"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
