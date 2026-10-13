class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.0/zenv-aarch64-macos-small.tar.gz"
      sha256 "8d5a3358d4e1829ae9dcb6c1e93a2267c50b54b249fb55d2313513712c7a04b5"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.0/zenv-x86_64-macos-small.tar.gz"
      sha256 "b99187a7c03e6d144f5ef798e4aa1c1845e9e13fff8d4587860a0681bf06a2f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.0/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "108509dc1bd46b7eaee85ca51e2a77971423cceac64cbfa523ff1a8595b8769c"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.0/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "c0271e0ef73ddf6bf196acfcf677a74408618622565aad11fb4b435d272a8fdc"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
