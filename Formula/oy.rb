class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.54/oy-aarch64-apple-darwin.tar.gz"
      sha256 "e8bd7b0d985f2f3424ca5bbf1c75cf1d5c035ecaa18e1fbeebdb8fa3d792ec8f"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.54/oy-x86_64-apple-darwin.tar.gz"
      sha256 "529d99b3ee1481a3d72c52e9cb4ff1b2a876755a33896b536a7462198630081b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.54/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "603f25bd429d5a1f7421f2d7df630535d60cf9213de1b780fd4c395e08d067f5"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.54/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0741aab383cb81554eca61090c5daf92868640a38c880bcfc96e59047cbde29b"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
