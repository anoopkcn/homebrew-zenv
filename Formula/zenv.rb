class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.28.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.3/zenv-aarch64-macos-small.tar.gz"
      sha256 "30f64c048571db9c38aa106d380f3352f26cf605d8ec1256187d8ebb29112225"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.3/zenv-x86_64-macos-small.tar.gz"
      sha256 "302b87f77fe5ddb096d3c015e05ad257bd52470dd59f5087f0a5fe5dee8be5de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.3/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "6c68175ff52efed5479482c07091be71e20376446dd82857c3fb898753236126"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.3/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "2e0d866df5acf00e2d5d0c46990eff9701323b800da08983454cf442b9b4d4ec"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
