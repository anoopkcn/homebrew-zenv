class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.1/zenv-aarch64-macos-small.tar.gz"
      sha256 "116eaee4c19f311918f478c8706ea6cee99d6f35bc96b98586504ac25e3535f3"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.1/zenv-x86_64-macos-small.tar.gz"
      sha256 "e46e7d1b4918637291c03e4e5564173b5b54a97666b5975aa64c99e0bf3f5c57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.1/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "7f184f684b7fe9f7b8fcd1899a6712a6a340ab68f9d7f42e241898a89f06064d"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.1/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "f3b0a5c336fe801170d30bbee5a5c1c59f778a8d7b37939e4f92ccce6708c48b"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
