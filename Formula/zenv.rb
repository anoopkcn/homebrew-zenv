class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.33.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.2/zenv-aarch64-macos.tar.gz"
      sha256 "0093a1e890d3690fdd4a76972b33e933d265c66836214386eae9f5a1b2b27842"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.2/zenv-x86_64-macos.tar.gz"
      sha256 "d594cf5a530d96d60f605d20bdf67aef9d239196005e1be05269ba7d5b3655d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.2/zenv-aarch64-linux-musl.tar.gz"
      sha256 "549030a2ddfd80d07d63f2467478ac4a80143a1d2324240aa9e2e3279d3c2bd6"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.2/zenv-x86_64-linux-musl.tar.gz"
      sha256 "c39f367e503fc6e4cc7d5edc14af3e2c29398d6c1807f72877dac77f4aeffdb4"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
