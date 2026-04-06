class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.28/oy-aarch64-apple-darwin.tar.gz"
      sha256 "03574bd85ce9f1c2c98253d9b6172d1a18a26e13aaa77a814542a6278620f4ec"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.28/oy-x86_64-apple-darwin.tar.gz"
      sha256 "28749d0a81cf5aa577d3a32e3887644ac4ac1ab06fe66bcbeb3f9ea4506631c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.28/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4728b68d92514d570a7ccd1aa74584522dc9c17e4c5b094f249302ecd9298423"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
