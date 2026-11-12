class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.33.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.1/zenv-aarch64-macos.tar.gz"
      sha256 "dac238f667b1f7b382e377d1700060a0c7441432b599b9daec66f3c8d4114226"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.1/zenv-x86_64-macos.tar.gz"
      sha256 "2a37d8537ff0d208523df67efd21926b7ffaee041ae8168d20316241ef1f5cc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.1/zenv-aarch64-linux-musl.tar.gz"
      sha256 "f48793bba00a62518fc30321fde0fb4a37709ae5874dd65a35e78b512ce035d2"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.1/zenv-x86_64-linux-musl.tar.gz"
      sha256 "ad3e3c763f2f6fea44e82b23fb605bf39de6c7252f28bb028a269358480fdc4c"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
