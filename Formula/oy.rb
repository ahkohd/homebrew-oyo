class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.21/oy-aarch64-apple-darwin.tar.gz"
      sha256 "d72f1c77879c2200f64e7443f28b31c8de7f7bf4e858f3fef9a5c561ed833135"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.21/oy-x86_64-apple-darwin.tar.gz"
      sha256 "fc0c910732fde345ff1acf7116a927efefa5af20f46aabdcb579bdd36198c640"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
