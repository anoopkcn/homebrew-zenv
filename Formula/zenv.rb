class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.0/zenv-aarch64-macos.tar.gz"
      sha256 "f74ad44184b47d35e3a780fecc5499aa0f56ee61443d48c1206a366f6b00e9c7"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.0/zenv-x86_64-macos.tar.gz"
      sha256 "84b59ab04c117a3bc7ae3ea1515b8810aa7a8c5a11d0a058be10d6d674e9cc03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.0/zenv-aarch64-linux-musl.tar.gz"
      sha256 "c8d7b4b7c8feae0d5add6473569206fb96237742c00bbaeeb9b0867126b515ea"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.0/zenv-x86_64-linux-musl.tar.gz"
      sha256 "2830cfb30266d5d08297a4f20e584b11e41f64dd262da6b6eb4f03a5eb7e4f68"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
