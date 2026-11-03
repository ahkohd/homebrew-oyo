class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.62/oy-aarch64-apple-darwin.tar.gz"
      sha256 "a5e8712bfd8a64f081b81354f827573791dd03560764d38f7f00a44855611115"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.62/oy-x86_64-apple-darwin.tar.gz"
      sha256 "c88e660a6c0806680b9526a85d1ffde572955c36201e7e4c54a19cc2da64b9a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.62/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e9afea5aa0feb89027d33c75390ad911d22b012f2d0b04d8faf8d839696cdf0"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.62/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8529bebeca3fe2975681313b5e2b4264a1ca5a3ef0a035eb93aaffdb2f89de58"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
