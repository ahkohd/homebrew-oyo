class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.33/oy-aarch64-apple-darwin.tar.gz"
      sha256 "68cae4b1bf571e428ba02aaed3b88e56f75b0b7812e5bc78cf0b66d27af41cfc"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.33/oy-x86_64-apple-darwin.tar.gz"
      sha256 "de25be02cc8d7782442bff642ed3227dc56cfee03d84e40ac973c8312e980412"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.33/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfcd374ff117fa21962528fe7c872a31bc29faee62d028d50048b04b98b65070"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.33/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e62f874a375a2a500e2438ad9c2137141407e7aee4bafe39a6ca26e859466c97"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
