class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.64/oy-aarch64-apple-darwin.tar.gz"
      sha256 "4f6a57d988c623d2903a964e5550484c82463d6a614eaf680c1659500e75406b"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.64/oy-x86_64-apple-darwin.tar.gz"
      sha256 "4f0cb548f9f14b0f83dfbd40ef6d85244cff57564e5f48160badd69fecd4683a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.64/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c6d61c217ad4f86e6eb0e39e6a992fd2c3321847f6dba4dd258ee878babdff8"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.64/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49d7b6875fe32d19a9fb31243a7b6962f8d08cc67994a0f7f166a7466635afc7"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
