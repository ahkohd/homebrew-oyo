class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.36/oy-aarch64-apple-darwin.tar.gz"
      sha256 "4c75d65d01f9bc9a858f51ee10c8a8da0ad6acd9a3b316eeb4dce1d0f7de77d0"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.36/oy-x86_64-apple-darwin.tar.gz"
      sha256 "a8769a9bb9ec0de751bd6be94eae73a905a89fcd713ce4ac2ddc15add3540291"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.36/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "027594588a53cad7478483b4cf9d2ecba79b630624f026bdc207bde87ca69dff"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.36/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eec319a079410881bc7acbefc2686c7ffd0e0d0094b98068dccefbf27a1665ca"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
