class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.22/oy-aarch64-apple-darwin.tar.gz"
      sha256 "c67d0fbf6ea44d0fe1e997f829a0f305ba4f368d4640eb620cfbd3021b81116c"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.22/oy-x86_64-apple-darwin.tar.gz"
      sha256 "2099dc0d510c6a1e0eed943cb5f97d9a544884675d1619d0f59d30a2fdacf46f"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
