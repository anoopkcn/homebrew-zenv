class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.25.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.5/zenv-aarch64-macos-small.tar.gz"
      sha256 "a461bddf6d5f81c898c272e8f28d716745705fef69183ca5ada3a29182c732cb"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.5/zenv-x86_64-macos-small.tar.gz"
      sha256 "13003c79ba6b654d1994b00b65aeb106920f7e7112aca684bb19e001c24caad7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.5/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "5e67bc4e7d40ca68a613d4c2f7053fc36261774a6415c4f1949f477693968bb8"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.5/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "024db2e6cac1bc34015e0e354d68855de890be4d5733b9c7298f4efd2aee3ec7"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
