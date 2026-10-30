class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.1/zenv-aarch64-macos.tar.gz"
      sha256 "d9bae0e66d2f3571d4877e7dee525b64ee959da1f51a2b1dfccfbe9bb8f6dc0b"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.1/zenv-x86_64-macos.tar.gz"
      sha256 "ba1518066ad7501a681b4ef19d0c4048b6e7226f453aff144ac8772d7d679d35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.1/zenv-aarch64-linux-musl.tar.gz"
      sha256 "bfdf9da739c23ae95bb901c7ea73e9422249b6544a896510b4c77d5866064ece"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.1/zenv-x86_64-linux-musl.tar.gz"
      sha256 "f8458577e2022e98b209fd590f264bf9f537a31a40649d239c72d396f2e6f327"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
