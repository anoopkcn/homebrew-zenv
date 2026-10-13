class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.26.0/zenv-aarch64-macos-small.tar.gz"
      sha256 "606c8abf4dc83a431d19824e9703530477fb74b1cd270976ea0ef4331d927d07"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.26.0/zenv-x86_64-macos-small.tar.gz"
      sha256 "11d76679323c9665b22ae9ca900625f032c2c26dff2f7316b150d4f79c166c90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.26.0/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "0bf6e6e5d8073e6c63b00afa228854140c831ff8a4b22b0bc8a580dd541147c5"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.26.0/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "ee7d74a10486f18af3de3be5ae14d38a342de408b1505e51cf35a10ff6407fbe"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
