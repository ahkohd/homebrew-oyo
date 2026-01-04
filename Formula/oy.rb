class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.23/oy-aarch64-apple-darwin.tar.gz"
      sha256 "64d215bf4807ab3480f7d5c51246998e3b51b632bb748d839f93405a62860d0f"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.23/oy-x86_64-apple-darwin.tar.gz"
      sha256 "57404e3492db98cffff86ec488e2d0d115fb49eabaee724bf2e431028585946a"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
