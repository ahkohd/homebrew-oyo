class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.57/oy-aarch64-apple-darwin.tar.gz"
      sha256 "28abd8543de0eec11457d6dcc27f2c545e022ee6430bfe7e8d5b14b3d0fa6e6f"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.57/oy-x86_64-apple-darwin.tar.gz"
      sha256 "0eebe0b8cecfb2a95151816547254f817c81c8bd9b2306010dccb5fab991a3cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.57/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76f9095dd18aff8a540bfdda7737468a2900b26c7d976bbaa071341db02aa8b3"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.57/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e2cf5cb09f652e7008d0546bcf0453e005387e6087d138ea722e3ce77e9a3d2"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
