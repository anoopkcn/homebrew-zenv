class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.3/zenv-aarch64-macos-small.tar.gz"
      sha256 "dfc339a32eaf545851c9535b16786ab007027ff714a721ec2c5bbae6981cb5b9"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.3/zenv-x86_64-macos-small.tar.gz"
      sha256 "bc1aa853165cf533ed19494d2d79dc4d3c6893fb6b0daf0738ac3b3e800abaec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.3/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "7993dd3b6f857a3ac90474225ff2d5f08d827b0e74d3038f211218e5c262150a"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.3/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "a3a0b930ef85bf0cf33b51106ef7bd2c5aea0f843a03b5f34705d35a8221a10e"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
