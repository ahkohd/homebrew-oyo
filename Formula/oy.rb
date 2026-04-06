class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.30/oy-aarch64-apple-darwin.tar.gz"
      sha256 "b0c7da31a4873ed30955c9ef0fff5437819a4b01eb9769d4154b7ac4312bc9cc"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.30/oy-x86_64-apple-darwin.tar.gz"
      sha256 "cc42214b68be77e54e5aadff2d987478ffca54b62b120ac196928fad2e780bf6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.30/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0a186c60c09817d3c085f9437e9e6f1a74603114dfe7db23e5c4aa72e44674a"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.30/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bbb78e89837985509902402b6a2f0c64173e32abe282f4603cac8a36bddf6aa"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
