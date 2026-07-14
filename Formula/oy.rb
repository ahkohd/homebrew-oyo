class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.48/oy-aarch64-apple-darwin.tar.gz"
      sha256 "b672fab26ea43b394e389715aae6abc5a2700190f3bf8ad81e897576dd62c77c"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.48/oy-x86_64-apple-darwin.tar.gz"
      sha256 "17ef2a22775a8c8da069823c99e758a25c057ef2cc032c9766ac4be8a5304adc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.48/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baf24c748f6087a73015d3f642a7783a9f599e72efc976aca521611ebba5b06b"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.48/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c259125a915b63e16cba5cbc7424a76e45fc1e8c1162429598ac1efb55a46f25"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
