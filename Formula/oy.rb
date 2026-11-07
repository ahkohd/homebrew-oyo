class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.72/oy-aarch64-apple-darwin.tar.gz"
      sha256 "3c755944c27de999fe2de71c18287fe1789a3ef239a128dc4389c9c9c0d8ca5b"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.72/oy-x86_64-apple-darwin.tar.gz"
      sha256 "93ad7b6ad201c2a41b2ff6cbcdf1d32656ce10b8c8a9ae8f7ab76acd3e61e994"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.72/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7db570c249f99db741ed64b38096e8c012c61e7eb5e02fdc6f6fda8c70298e3"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.72/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "daaef5a8a52402c3c37a5df5fe3e864b87fed2ea20eed26fe7bc3daca201fbfe"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
