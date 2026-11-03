class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.63/oy-aarch64-apple-darwin.tar.gz"
      sha256 "e4fb8c820e4934f90d75b5bfa7a85a35a9ede8de3568de42095c6daf560f8e0b"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.63/oy-x86_64-apple-darwin.tar.gz"
      sha256 "e47535eb7fac00a6266b7298c84408f11375aefd9a7f73bce4efa660400181bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.63/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc12845715d711d026cca7643192ceae7414050d1798fa927c220a27ec8f5a15"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.63/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f648b7e1aa0fbe5c6e4491c12227ac115fdf482bfd1c4e711988b1b9008cde22"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
