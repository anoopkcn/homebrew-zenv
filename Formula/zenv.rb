class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.24.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.2/zenv-aarch64-macos-small.tar.gz"
      sha256 "cbc5a1b73d4a67b62bdb38dd98a88d3a2aa2932f35fbec956705474487e01141"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.2/zenv-x86_64-macos-small.tar.gz"
      sha256 "0b7a0163535572c5f193ce73ced7a2ea9e286554564dfc3af1802fca653d186b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.2/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "f82ae73e54512e7de51331e4624528f461e2a9d9777cd398c9609870dbaa4257"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.2/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "795a1f98e5c4a215d9b95ec332b48927c226321bbe8dc72a42eaba93dcebd240"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
