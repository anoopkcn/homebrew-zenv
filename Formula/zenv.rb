class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.2/zenv-aarch64-macos-small.tar.gz"
      sha256 "1da1f06c753717f49d7eb460f67cab09b4eafe51caa0535f407200028e7d2f91"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.2/zenv-x86_64-macos-small.tar.gz"
      sha256 "f52554c99d45e08ad82f3516c7f63a7f7a538cddec1058084e74d4542d4ecf59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.2/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "6c6ff58492da0a8402d690c41e105d4b145eaef0dc30d680fe32fe86aadff61e"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.25.2/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "00275196db482ac899ecd402ec950dd32b2b90f9763f081abe3fed322192a1ca"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
