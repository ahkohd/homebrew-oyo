class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.44/oy-aarch64-apple-darwin.tar.gz"
      sha256 "898f37bc2b198020585f4f9bbeeb2a6b2610d72dc4eae29c4e9afa9e94ef8c8b"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.44/oy-x86_64-apple-darwin.tar.gz"
      sha256 "5ff3b810f8f9d4102655f2d7407f8c06cb173888633103947f345ff811e9c5cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.44/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f8a9a3f87dda63d29e0f7a2449d7cf835cab64a2e5603c95db8b2c97d16e2c9"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.44/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9334d26f7e25974ed82a78c58cbade6098e49a049c91291fcdb9fbb2d86dcb0c"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
