class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.66/oy-aarch64-apple-darwin.tar.gz"
      sha256 "0a8d363fe079aed584cb8ccad4e8693a9863284ce28ce897906c536864ba22f8"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.66/oy-x86_64-apple-darwin.tar.gz"
      sha256 "0650cab7254dc5a246b017ab9944318b49cee62c03a55257de8cd3877b06e6fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.66/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfe62335a2eeb1c6e10c5ef3a162c0200874d110cf99e22c20e826d639df8811"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.66/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47175820d7822292a6d0f5a9dfae0f28e3f32cca69ef072129d44758ae759b96"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
