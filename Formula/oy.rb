class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.59/oy-aarch64-apple-darwin.tar.gz"
      sha256 "b47266938c3da6c1cb8a16d9543578a7c23a7101a3f044ec258e5ad2ce8ba876"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.59/oy-x86_64-apple-darwin.tar.gz"
      sha256 "22fb1df4f05f50b4be2ec9f59c7cadd9a67c600b54646be614c1b663c16a2026"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.59/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83b9dd35699ae1dab0413afd8b37c83f7bf2242fe69f0c470fe5bad2f135560e"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.59/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d297fb4b2f22bfa98a0df0b63e1305a4948e784f025871b9fe16ac19ab71cbd9"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
