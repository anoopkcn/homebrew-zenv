class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.23.0/zenv-aarch64-macos-small.tar.gz"
      sha256 "194da58a0ef993077325e7ee32e4a9a351b90b9d486a7757050db14f700ffb9c"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.23.0/zenv-x86_64-macos-small.tar.gz"
      sha256 "211241fd659503de0e3a0cb5117de7e6ed3caff39f81c5a50c2c596cdc5d0d49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.23.0/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "7d3a15f91821e95ee132e444c35a68e50aada1d33dac11ea32583520e0e7215c"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.23.0/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "cef671e476865ab5a770e4f52aa2983faaa5de28f6fc41689683f1e530e7c753"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
