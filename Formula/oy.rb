class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.55/oy-aarch64-apple-darwin.tar.gz"
      sha256 "0f943875d06ad7851556af4893bc094985c9479f7fc45a3fdb27b925d762229e"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.55/oy-x86_64-apple-darwin.tar.gz"
      sha256 "46be0846ed2e61854e067b05a7737452d56c6db8744c405026414e74cbd07335"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.55/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad5408894160ad39b08114fe6a647dbf684e81341a4a5fec4da5680e14ba41f1"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.55/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "675eb5c5b825c8c1e44415beb76111f74eda48e7093f51ef84a34fe380a95e7b"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
