class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.29/oy-aarch64-apple-darwin.tar.gz"
      sha256 "30c38381c7c2ff339ecd706244fcbd63576679b2d1bebaf3b164e5711a36a37e"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.29/oy-x86_64-apple-darwin.tar.gz"
      sha256 "d028013757477cddedeee144a1d5e6d104dfc625a941873c09d65e9cc0b89945"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.29/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f2460cead90b2f633c4abd75a127f2d23d78d7d61e3f7f9333b78dfadc7a52f"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.29/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36f1ae03053398c729fa03022523053090705d508c2064fd599346223bc26700"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
