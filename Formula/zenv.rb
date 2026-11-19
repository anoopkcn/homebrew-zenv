class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.0/zenv-aarch64-macos.tar.gz"
      sha256 "5f8f2d608a0b462b20ff12bdb53e35fd7d9d8e80d35a8d97e3e9fba7dd090135"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.0/zenv-x86_64-macos.tar.gz"
      sha256 "a4b0d86ee81e4a4a2a0bd7b6cb4733010a9e1ab284fe19098f1fd4f9df54d3e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.0/zenv-aarch64-linux-musl.tar.gz"
      sha256 "3c986d63d3a32a6ba7ae34f2c089d7a076965feb943596cca7223e6cbc400fee"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.0/zenv-x86_64-linux-musl.tar.gz"
      sha256 "9505b8fa937635e2762c04cca739433a76569a6347be96429990747a82cfcdaf"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
