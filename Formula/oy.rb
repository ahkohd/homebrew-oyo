class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.40/oy-aarch64-apple-darwin.tar.gz"
      sha256 "2fd57a2f5346dcad09c23771116fccad35bad490d351157c6b2874d59e8957d6"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.40/oy-x86_64-apple-darwin.tar.gz"
      sha256 "721887309eb71f49aae27329eda46852e1020139040930b5b76c0e5e8c5b177f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.40/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d6271d214adfed679a2e041f83f5fa024d115eeea4c6130f35bb7e41ff4e63c"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.40/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca1b6b86fbac78bbf25be89722836d82414d851f27db2f46fd97b190b28de8c1"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
