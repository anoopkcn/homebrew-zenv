class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.1/zenv-aarch64-macos-small.tar.gz"
      sha256 "1ea38b946c0bfd16f140c19a0ab1b4a86fc2077833de0141001d8f142efa8ca8"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.1/zenv-x86_64-macos-small.tar.gz"
      sha256 "05b84befb47c3a91e51dfb95f41478cddc8ae0b74a4e7af267f5c1ce58a921b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.1/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "177319734ac84b4ec69486b32ca3434adc7ef97031ee1e2ae3d031d45d3f9ea0"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.29.1/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "293ad07f3df7b3aadb8cbf85dda7e46bd93e368d0b1d1f13be148c7cfc33215a"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
