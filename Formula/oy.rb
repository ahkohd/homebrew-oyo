class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.71/oy-aarch64-apple-darwin.tar.gz"
      sha256 "5a34328df51e904b9467222b3dae1b12ac97ebac132710986b38e56ecc1f3663"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.71/oy-x86_64-apple-darwin.tar.gz"
      sha256 "29eaf77baf0346a12a98e2a0bc68ab5a0b8cfb4e03699470da225577f9a1dddd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.71/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6086288cb0839a82489eccc18fa08a962e3a88f4e79e804be5ab986c6c92e4d"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.71/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a60255a96e911602bdc68f212397c966d588642493c6fea29c3e48251a2cd56"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
