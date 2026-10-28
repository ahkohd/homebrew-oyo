class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.61/oy-aarch64-apple-darwin.tar.gz"
      sha256 "7593caf2717a65752c90dc062406553c55328413534ff542f3fb8a5615fcfeb4"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.61/oy-x86_64-apple-darwin.tar.gz"
      sha256 "49eacd6d90a8451fee2566f57a2d247a61be0d8d3364f2d8dbe1c8118ecd4605"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.61/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c75837c52b23db432b097af7abb39134bcb192d45e43c5604aedd32b29aae738"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.61/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a5177057c9b46d4c7a262adffa9f01317fb7b6f13fad1a0fe74356dded28491"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
