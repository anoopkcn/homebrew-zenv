class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.0/zenv-aarch64-macos-small.tar.gz"
      sha256 "0bc07b398bbcbce620c02aa9a2cc3ab3af4c52b2af8e4f5dba052a881079f3c7"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.0/zenv-x86_64-macos-small.tar.gz"
      sha256 "e3b63b36ce6a169b48df46084144a2b422bdb88323c04428e26896e41c26b23a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.0/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "33c87e1f25870b88b8c9834b039376bdba737a9c3a1878aff407cbee49e424ae"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.0/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "98843fc3384414e40f78805227ccff8c06c2d826d6c1f73830c7bd9b3058275b"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
