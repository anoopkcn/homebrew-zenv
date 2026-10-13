class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.7/zenv-aarch64-macos-small.tar.gz"
      sha256 "98a0f2358f300a4866a9c19a3214a230eeb4e56695457fe54017ad0c1c84cd77"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.7/zenv-x86_64-macos-small.tar.gz"
      sha256 "09bfdca04344e4fbd11b83eb8388a20d294509160c75d2e1bb35c5f246c999b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.7/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "843a9523fcbb6c0da2219c356980e1314d50978eb4b28a357492ea6426d2c279"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.7/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "92ecd9e53bd89e6de81100489c65dde0f0befd8ef1f355e7e60a42f3adbb0bcb"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
