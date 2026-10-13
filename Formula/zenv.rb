class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.5/zenv-aarch64-macos-small.tar.gz"
      sha256 "d72308c1a730ba7f36fc12228b8dac2b8d0ee1e6f0fb6f8faf9458814a35d1c1"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.5/zenv-x86_64-macos-small.tar.gz"
      sha256 "ff4487b18c39b506c06d5da0228a793557b903a3f6ae0b0163f3368b45ce5321"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.5/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "5ddd47ae8d975ac9d9b9b75e0bddd31de014715f419d2607372963cd2f68b9c3"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.5/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "3c5a394f3e99a706ee51d5d9673243e74d623fb6ae5ff808efda4ba97b0eff38"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
