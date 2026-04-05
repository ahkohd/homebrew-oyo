class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.25/oy-aarch64-apple-darwin.tar.gz"
      sha256 "1babaea6923dc56ee6e73dc8f05a1f517d45031373a0d2907a128e7f253ad23f"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.25/oy-x86_64-apple-darwin.tar.gz"
      sha256 "8ca2f25f2441e0337b8ccba17c9e847e9d96ad20d1c6fd4620ee15e035470c1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.25/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d04fa2c9d3b9cd4ea651b14e4cc5bc692c07085fed1d29f9cb3cd9b1575541c"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
