class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.34/oy-aarch64-apple-darwin.tar.gz"
      sha256 "663e54494cd5fe354910d83cafadd3b7ecc160cb741a6c057687ef65acbed1db"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.34/oy-x86_64-apple-darwin.tar.gz"
      sha256 "609b90077c242215401cf4e4dc32622b7a2ae2b7e7016beb34c056ea30053ad0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.34/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "507a51edceb9098b4fbd50ffed95795b808f16e64d8960b4967e3282c5b0e303"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.34/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "010480bf0e0a35e885e9eecf152cb4a11b33284b3b9111d4c1a956a26a0e20ed"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
