class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.1/zenv-aarch64-macos-small.tar.gz"
      sha256 "b5886c4aeb9f27f9e20d69d8902554e2e3a93f058d03ea69d9a08372399ca034"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.1/zenv-x86_64-macos-small.tar.gz"
      sha256 "843dcdd784ecbcaf33b07b8351c104e5f71cec7aa267a5aa4d8598396cb955c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.1/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "c8221c8ac5d7b832d21420902d894ba13328e2595ff9d5e2a9da043493d0a332"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.1/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "5b90031ad5f6eb1b6d23fef91721d91ab363206874f2dcf7f5e2fc159fc4e45a"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
