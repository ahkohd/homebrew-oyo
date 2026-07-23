class Oy < Formula
  desc "Step-through diff viewer for the terminal"
  homepage "https://github.com/ahkohd/oyo"
  version "0.1.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.56/oy-aarch64-apple-darwin.tar.gz"
      sha256 "4cb8f614f8f209e3edfa143734ec7ddbb8ec18d4d1ad870681a546b5bf62b2f5"
    end
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.56/oy-x86_64-apple-darwin.tar.gz"
      sha256 "5be63d1a4bd472f698a036aaec76f667c68e1db0aee3295e2c2a1e08363634e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.56/oy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82a288fdc8202765a849e5bb888d05d6f5299edb690a049870d408842f44954e"
    end
    on_arm do
      url "https://github.com/ahkohd/oyo/releases/download/v0.1.56/oy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac63fecddda582a34da186d76577a0c8c99c7e7c84ba822bd3d8868b62e1055b"
    end
  end

  def install
    bin.install "oy"
  end

  test do
    system "#{bin}/oy", "--version"
  end
end
