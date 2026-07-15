class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.51/oy-aarch64-apple-darwin.tar.gz"
      sha256 "df5c28aa8e22c5059682b1c0173568245f389851949404cddda0734a40f80713"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.51/oy-x86_64-apple-darwin.tar.gz"
      sha256 "df7cd13899bd11117d56aa3c104603cf6a226ec72c37f8e51d6abfa02da0a120"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.51/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "872562fc4b63a122d8f1db2e7e5e99b29e0245c8b4cbd1bb5b1359877e57ced2"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.51/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "554cfea3d38ca7b4d61cbeb041f4d7b70e9cafd6c7a3fbf844448b2382d1b4a1"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
