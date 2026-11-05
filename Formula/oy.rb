class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.68/oy-aarch64-apple-darwin.tar.gz"
      sha256 "95b9700e8ea037c8ed13185d4232d84d864817b36e086fddfbe9a5f9421b4519"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.68/oy-x86_64-apple-darwin.tar.gz"
      sha256 "ef038e92a2023c14163e656a680c1d91686d40e58099e9ae22265e315f652866"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.68/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40e7898fd6039b8edbb9f10fd39cefb1559d2560eb42503d82cb4388a3d09a17"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.68/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "414337d1788d0bd90ce887e60ad0ff25ad7868ab70ecefe1ebe98d8d41eaf6d1"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
