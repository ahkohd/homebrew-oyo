class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.26/oy-aarch64-apple-darwin.tar.gz"
      sha256 "f76980f1d97860a75b50c9befb8627ddbf79042922320b45ae674f2b528c384a"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.26/oy-x86_64-apple-darwin.tar.gz"
      sha256 "0b54b579548e098422553a59bbb12df48ce7421f3a0548460823943853f7692b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.26/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33b33f7f1d4a287d4c25734aa98ef8af2f5c8c372921f9a7233a7c22c00dd2a3"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
