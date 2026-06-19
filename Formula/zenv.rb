class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.24.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.5/zenv-aarch64-macos-small.tar.gz"
      sha256 "623623a0a30c9beee86b21f16dfddd295ca4501419e5f4e967f7fa256081f968"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.5/zenv-x86_64-macos-small.tar.gz"
      sha256 "6a61a2b3b159db811c718326609ac7b4b1de673549a96959cb4a8287617c9e73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.5/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "26b3b8c2f60d0d0929dd96529bb4ba1347ec999634c0ac5a7e27d5c56651724d"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.5/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "71a39b7382402f88115b92c125cd7ad597ce0c96a5a65951f51c4e040654e8a8"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
