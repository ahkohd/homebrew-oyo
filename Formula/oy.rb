class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.24/oy-aarch64-apple-darwin.tar.gz"
      sha256 "9e15474b0241ecc0bab851f49580cb81785d2d41a84ec9d009b4f43fcfae2ff9"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.24/oy-x86_64-apple-darwin.tar.gz"
      sha256 "d588d284387ca2fe2c86734eca1d6f437b1a03396cf33c87a66e035315dd057c"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
