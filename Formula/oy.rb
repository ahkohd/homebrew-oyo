class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.37/oy-aarch64-apple-darwin.tar.gz"
      sha256 "97e8606e337f0bca6b42979ea7e811e90fe977f5ae6c77fc008871005ed92feb"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.37/oy-x86_64-apple-darwin.tar.gz"
      sha256 "e8c33d05b7cd2f3a597f0c661beda4e86b66cf59c05b80866ff9df883017182a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.37/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38d0754bbea786ca78d6b51992fde703a9e259c5603c81780088c3cd7d9df29d"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.37/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52910b027d0d84a5bcd259cca2d3afbad12ec47b97c019090ba1abb39dcd5461"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
