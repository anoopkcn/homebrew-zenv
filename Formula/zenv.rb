class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.31.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.2/zenv-aarch64-macos.tar.gz"
      sha256 "3c0d6898e174350696833394148063ad48a372908e634b014fda7a8b1eedb84b"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.2/zenv-x86_64-macos.tar.gz"
      sha256 "08a664ca5a33b7bcd3d4531e16179cedd613884f7a86f4687d2ec657bc251607"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.2/zenv-aarch64-linux-musl.tar.gz"
      sha256 "a1500614aa463abb22039902dae05637307d5dfca4f1dc4bb040909880844c97"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.2/zenv-x86_64-linux-musl.tar.gz"
      sha256 "278c8f35a6a5d3bdc0350d545aab7a873b341e509b7ebfeeb01e952414742fd1"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
