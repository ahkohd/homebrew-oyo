class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.46/oy-aarch64-apple-darwin.tar.gz"
      sha256 "a1795e844720b0739b9f5e23fa0b37aaa307240e2fd0c3409f49625ef15f2854"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.46/oy-x86_64-apple-darwin.tar.gz"
      sha256 "e9b14b0a17b4e63266421b86af496ee29cadd74777cac27ace14bfe57a6250c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.46/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa3f53ed5464cb8dbba7d2821b6f24ef2d56eb1dbd6b6759b6f4135730460260"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.46/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7b350adf6df0e812e848c2a47c7d93a516931ba8b2a313b6f4d595df7e59392"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
