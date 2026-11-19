class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.34.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.1/zenv-aarch64-macos.tar.gz"
      sha256 "f6a8c691f315dd2fe695fefb79c52050d98d60f57aed6be545f9900acc97b4ee"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.1/zenv-x86_64-macos.tar.gz"
      sha256 "82d48c206c4bbc9ce4ea54a82c73bfd34ad66c4b5713318e8b2457539eacaff0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.1/zenv-aarch64-linux-musl.tar.gz"
      sha256 "89a0723512127b903f4f7defb61e05140f978e0952cc1313f2ec9ba78dbfb805"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.34.1/zenv-x86_64-linux-musl.tar.gz"
      sha256 "ece05e364054daeefe8dfe01e3291e1d024c6af7946bf3fb67adaa8bc5a66b69"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
