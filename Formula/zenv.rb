class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.22.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.6/zenv-aarch64-macos-small.tar.gz"
      sha256 "f09b7342fc4e480fb9466ba99091105c18b7c9edb42b050a03e3ffde8d7ff54c"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.6/zenv-x86_64-macos-small.tar.gz"
      sha256 "fdefaf22fd541670c09fa6da02f8420a7496405b9da997e9651e9120656175cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.6/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "680c08fa645882f3608806d252c151959361b3ea440197b52c69504acd1cecb8"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.6/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "e023a0d7386fb2342bcda5444341ff7d9a5113f1c13788abf4989a714f17a05b"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
