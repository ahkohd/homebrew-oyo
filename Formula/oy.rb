class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.65/oy-aarch64-apple-darwin.tar.gz"
      sha256 "820173573400e00bddcab16988ea0f5a9970df793a67343f21710875f373db8f"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.65/oy-x86_64-apple-darwin.tar.gz"
      sha256 "2b67e8994f678502f84a8f16b6e6ed285ab08c1be1fc0ca55d616b6860c02efe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.65/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f918d99d67dc341b837f25753f144a73b9163a601bbb7d26a0d4edf04fef73a3"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.65/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ad51574332eaf620776380e6c1f361f99579a63229a1cbe7c5c8364fea2099b"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
