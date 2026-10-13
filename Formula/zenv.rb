class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.2/zenv-aarch64-macos-small.tar.gz"
      sha256 "cc62ea9bbe0a46e3e768c63f308c1a024575b1623fce59e946ade732cc42d260"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.2/zenv-x86_64-macos-small.tar.gz"
      sha256 "b3117ce608eb9a28990ecc56f51e30cae92d5373320c2344a61f082badb9a750"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.2/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "2148967839e9e2c1eb2e3cb4e183b15ef2d9e44ddafeff0dc652ff2b9c5a9210"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.2/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "720610b12b04ef2def26dc37b6a2adebbdf77d58bb23dca791e1767b4aa375ac"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
