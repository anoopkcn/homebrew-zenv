class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.22.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.7/zenv-aarch64-macos-small.tar.gz"
      sha256 "c59478649445dd7e379dc029bfaf453af377f5efcf78391e95c5a78362de8833"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.7/zenv-x86_64-macos-small.tar.gz"
      sha256 "1a31144e13e275a590291951c47edda3c0a21ddb101d800283b7f0e34b40a297"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.7/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "c87719df704a642d3937a9d567fc4228ed822831cd3e78243873c73423bdfc25"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.22.7/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "7b44fc676c940fb7e5bfbe1e666ce15e139578686d2e5ba8afb951ac904d582f"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
