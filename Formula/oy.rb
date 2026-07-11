class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.42/oy-aarch64-apple-darwin.tar.gz"
      sha256 "a40e4733a9705b5c2b2edcbb428fd8fdcea3154598ccb6081dc7e336d2664a36"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.42/oy-x86_64-apple-darwin.tar.gz"
      sha256 "979541962ae9a6f49467c189ec6076841be6b246afe442240d501ecbae581da7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.42/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ee2db7b9692e415ffcfa8109311a6b762ed6e3706bc5ee8a212422a3fba02e8"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.42/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "296d6c2d53af2d0fadd36f9a252d91ef649373985e9cc2d001752f68dd03f8f3"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
