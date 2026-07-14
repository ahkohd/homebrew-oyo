class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.49/oy-aarch64-apple-darwin.tar.gz"
      sha256 "6db059e5818ad3766198aa542e6e4c8bf919c839d37079425fa9ca58eb420a13"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.49/oy-x86_64-apple-darwin.tar.gz"
      sha256 "43564df017a92f9d8b64be7f0095e3fa22a50ba008d07e84b43dde9c7b9c1b39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.49/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4d1aa2400c0ec41e07e4ecbee183556b201c6f9726ab8fc82a96888e9bb20e7"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.49/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2226ff063326e346a8e5b5e7aafd0066ca5e4efca7ae8ee1733b23126fce77b5"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
