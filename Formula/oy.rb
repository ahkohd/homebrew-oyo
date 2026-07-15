class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.50/oy-aarch64-apple-darwin.tar.gz"
      sha256 "fc1a93bc0a4fe62407a4e679ccb8ca15eba1ac3b8d5018d7144c844250766efc"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.50/oy-x86_64-apple-darwin.tar.gz"
      sha256 "03d39e208b4982cfbd20ee813c0f80c1067b06f8af4cbbc79ee6e4f913b70faa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.50/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a04b9219b189aa5bf72cf1ae68028eb98e8840b542a1d7208de92e7526125011"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.50/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ced829177ffb95c295b9fdb53dab31dc83d0157bcf0a5cc2730f87cba15cca2c"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
