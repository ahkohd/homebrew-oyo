class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.32/oy-aarch64-apple-darwin.tar.gz"
      sha256 "1604304a16ae7456448395f507da136513b044daf24ecc1ed6c253fdb5e2c2db"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.32/oy-x86_64-apple-darwin.tar.gz"
      sha256 "04c73eaa12193f0d9a29a3bda847d2c5516adcada99cc7cd14d32a2be99daba8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.32/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1943a8388fed7d7037aef1c4868b266ef2f2fd6df51a36794b3ad59fb77faf88"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.32/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44b193275a155142ca3c6b5f1e315366714ca751b043374b1fb1b9d44daf9638"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
