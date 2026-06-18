class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.1/zenv-aarch64-macos-small.tar.gz"
      sha256 "ba6788cd2c9c67e81e0ababb07b51919ecf499830d35b683c947351bd325306f"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.1/zenv-x86_64-macos-small.tar.gz"
      sha256 "e748b2ec7144fc016f99fa2f72d9a5df77a48a2681f73f7be571be5567df13f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.1/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "c1fc3e209263b3a405d044eb1f4d096ed3a9591524fda0633aefe8e6a769ed8c"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.1/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "caebb376de3b75c5a75e4f055904fab6a420c17e8fec9b7888e31dd7ab39c7b5"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
