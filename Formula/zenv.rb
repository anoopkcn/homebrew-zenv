class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.0/zenv-aarch64-macos-small.tar.gz"
      sha256 "16d711d9313b1c2185882327974f30d9d779855f5f7ef03e4374567477b44689"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.0/zenv-x86_64-macos-small.tar.gz"
      sha256 "0315907861965618ce410ffdc2e2c2b429751da3b18f065c643072a13a3f13cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.0/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "8366949b48075d1c79f21b3ea9ec62401047c15fd1ce805f0b6855ee85bb416d"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.0/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "5718f67ecd07bcd473319fde635a37e4b1d9c87e1f4ec5bbd7c3c5007961518a"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
