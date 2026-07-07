class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.41/oy-aarch64-apple-darwin.tar.gz"
      sha256 "ed0ab1b2f683969c4ca83166f99144899e4c25328e50ecc1754ca7710fe802fc"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.41/oy-x86_64-apple-darwin.tar.gz"
      sha256 "ffcbffe418226051a6cb1cd245abead2cb6522cee163ee93496e3145b088e56e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.41/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "634f79576eefea16e1e5ea626e73ad4120be56fff35aa7d24a406cd9e6a12624"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.41/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14ebd74cd0f690579a6965cd1daeaeac6fb976f99d4ee944c13a216d6f628252"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
