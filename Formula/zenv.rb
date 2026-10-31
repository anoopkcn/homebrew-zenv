class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.31.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.3/zenv-aarch64-macos.tar.gz"
      sha256 "f60e831eb92d7dd32756b6a87d5f285329c0419a5a649592d36c500e31892d7f"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.3/zenv-x86_64-macos.tar.gz"
      sha256 "87096b554628097933e0af04e7a824417096fb6b10468dcc48f8fc4724ccbfa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.3/zenv-aarch64-linux-musl.tar.gz"
      sha256 "4859e058806181f3b642aef024d60bb3089e7bbef37c3256394b667cd05819ae"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.31.3/zenv-x86_64-linux-musl.tar.gz"
      sha256 "e049c80f2c0f7fd6b6126244faefbef3760a97cb18144dd18152f29b0d6301a0"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
